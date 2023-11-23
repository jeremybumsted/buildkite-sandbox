#!/bin/bash

set -euo pipefail

echo "Checking AWS"
aws sts get-caller-identity
