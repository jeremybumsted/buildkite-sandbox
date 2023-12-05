#!/bin/bash
#
set -euo pipefail

touch example.txt && echo "hello example1" >> example.txt
buildkite-agent artifact upload example.txt
rm example.txt

touch example.txt && echo "hello example2" >> example.txt
buildkite-agent artifact upload example.txt
rm example.txt

echo "All done"
