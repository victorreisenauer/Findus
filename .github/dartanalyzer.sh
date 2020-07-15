#!/bin/bash

FOUND=$(dartanalyzer --format machine lib 2>&1)
FOUND="$(echo -e "${FOUND}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
COUNTER=0

while IFS= read -r line; do
  if [[ "$line" == *".g.dart"* ]]; then
    continue
  fi
  if [[ "$line" == *".freezed.dart"* ]]; then
    continue
  fi
  if [[ "$line" == *"injection.iconfig.dart"* ]]; then
    continue
  fi
  if [[ "$line" == *"router.gr.dart"* ]]; then
    continue
  fi
  if [ -z "$line" ]; then
    continue
  fi

  ((COUNTER+=1))

  IFS='|'; parts=($line); unset IFS;
  echo "::error file=${parts[3]},line=${parts[4]},col=${parts[5]}::${parts[7]}"
done <<< "$FOUND"

echo "$COUNTER"
if [ "$COUNTER" -gt "0" ]; then
  exit 1
fi
