#!/bin/bash

set -euo pipefail

NOTIFY=$(cat ./notify.json)

export SLACK_USER=$1
export SLACK_MESSAGE="Hello yes it is I, a notification from Buildkite!"


buildkite-agent step update "notify" "${NOTIFY}" --debug-http --debug --step "${BUILDKITE_STEP_ID}" --append
