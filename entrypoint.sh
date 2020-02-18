#!/usr/bin/env sh

set -e

function print () {
  [ -z "$(eval $1)" ] && return
  echo "Folder \$$1=$(eval $1)"
  ls -la $(eval $1)
  echo ""
}

print "PWD"
print "HOME"
print "GITHUB_WORKFLOW"
print "GITHUB_WORKSPACE"
print "GITHUB_EVENT_PATH"
print "RUNNER_TEMP"