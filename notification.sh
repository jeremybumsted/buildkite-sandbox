#!/bin/bash

set -euo pipefail


SLACK_USER=$1
SLACK_MESSAGE="Hello yes it is I, a notification from Buildkite!"


buildkite-agent step update "notify" '[
    {
      "slack": {
        "channels": [
          "jeremy-test#test-notifications"
        ],
        "message": "@$SLACK_USER: $SLACK_MESSAGE"
	}
    }
]'--debug-http --debug --step "${BUILDKITE_STEP_ID}" --append
