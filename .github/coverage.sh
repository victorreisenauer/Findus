#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install -y lcov

LCOV_PATH=./coverage/lcov.info
MINIMUM_COVERAGE=80
REMOVE="**/*.g.dart **/*.freezed.dart"

echo "Excluding $REMOVE from coverage..."
lcov --remove ${LCOV_PATH} ${REMOVE} -o ${LCOV_PATH}_cleaned
mv ${LCOV_PATH}_cleaned ${LCOV_PATH}
CODE_COVERAGE=$(lcov --list ${LCOV_PATH} | sed -n "s/.*Total:|\([^%]*\)%.*/\1/p")

echo "Minumum Coverage Required: ${MINIMUM_COVERAGE}%"
echo "Current Code Coverage: ${CODE_COVERAGE}%"
if (( $(echo "$CODE_COVERAGE < $MINIMUM_COVERAGE" | bc) ))
then
  exit 1
fi

genhtml coverage/lcov.info --output-directory coverage

find coverage -type f ! -name "*.html" -delete

tar -cJf coverage.tar.xz -C coverage .
UUID=$(curl -H "Api-Key: $COVERAGE_KEY" -X POST 'http://lcov.hndrk.xyz/' --data-binary "@coverage.tar.xz")

echo "::set-env name=COVERAGE_UUID::$UUID"
echo "::set-env name=COVERAGE_COV::$CODE_COVERAGE"

