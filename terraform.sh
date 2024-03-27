#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}
code_fence="\`\`\`"

planAnnotationFile="plan.html"
cat > "$planAnnotationFile" <<EOF
    <h3>Terraform Plan</h3>
    Here is the plan:
    ${code_fence}term
        This is a \033[0;31mtest\033[0m
    ${code_fence}
EOF

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"