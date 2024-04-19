import * as github from '@actions/github'
import * as core from '@actions/core'
import {Octokit} from '@octokit/core'


function makeGitSafe (s: string) {
  const regexp = /(?![-/])[\W]+/g
  const result = trim(s, ' ').replace(regexp, '_').replace(/[/]+$/, '')
  return trim(result, '_')
}

function trim (str: string, ch: string) {
  let start = 0
  let end = str.length
  while (start < end && str[start] === ch) ++start;
  while (end > start && str[end - 1] === ch) --end;
  return (start > 0 || end < str.length) ? str.substring(start, end) : str
}

async function createBranch(octokit: Octokit, branch: string) {
  const context = github.context

  // Sometimes branch might come in with refs/heads already
  branch = branch.replace('refs/heads/', '')

  try {
    // throws HttpError if branch already exists.
    await octokit.repos.getBranch({
      ...context.repo,
      branch
    })
  } catch(error) {
    if(error.name === 'HttpError' && error.status === 404) {
      await octokit.git.createRef({
        ref: `refs/heads/${branch}`,
        sha: context.sha,
        ...context.repo
      })
    } else {
      throw Error(error)
    }
  }
}

export async function createBranchForContext(octokit: Octokit) {
  const context = github.context

  let name = makeGitSafe(`issue/${context.issue.number}-${context.payload.issue!.title}`);
  core.debug(`Creating branch ${name}...`)
  await createBranch(octokit, name)
  core.debug(`Finished creating branch.`)

  await octokit.issues.createComment({
    owner: context.issue.owner,
    repo: context.issue.repo,
    issue_number: context.issue.number,
    body: `Created associated working branch: [${name}](/FindusKids/test/tree/${name}).`,
  });
}
