import * as core from '@actions/core'
import * as github from '@actions/github'
import {createBranchForContext} from './create-branch'

async function run(): Promise<void> {
  try {
    const token = process.env.GITHUB_TOKEN
    if (!token)
      throw ReferenceError('No token defined in the environment variables')
    const octokit = github.getOctokit(token)
    await createBranchForContext(octokit)
  } catch (error) {
    core.setFailed(error.message)
  }
}

run()
