#!/bin/bash

echo "+++ acquiring :lock:, this might take a moment"
token=$(buildkite-agent lock acquire llama)

echo "the emperor's new groove"
sleep 10

echo "releasing lock ${token}"

buildkite-agent lock release llama "${token}"

exit 0
