#!/usr/bin/env sh

set +e

function print () {
  sleep 1
  echo "Folder: $1"
  ls -lar $1
  echo ""
}

print "/opt/hostedtoolcache"
print "/github/workspace"
print "/github/workflow"
print "/home/runner/work/test-github-workflow"
print "/github/home"

echo "ENVs:"
env


docker run --rm busybox echo "hello world"