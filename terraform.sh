#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}
code_fence="\`\`\`"

planAnnotationFile="plan.html"
cat > "$planAnnotationFile" <<EOF
    ${code_fence}term
    This is a \033[0;31mtest\033[0m
    ${code_fence} \`\`\`
EOF

printf '%b\n' "$(cat $planAnnotationFile)" | buildkite-agent annotate \
    --style "info" \
    --context "ctx-plan-$project"

    # buildkite-agent annotate \
    #   --style "info" \
    #   --context "ctx-plan-$project" < "$planAnnotationFile"