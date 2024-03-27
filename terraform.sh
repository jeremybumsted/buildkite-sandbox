#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}
code_fence="\`\`\`"

planAnnotationFile="plan"
cat > "$planAnnotationFile" <<EOF
    \`\`\`term
        \x1b[31mFailure/Error:\x1b[0m \x1b[32mexpect\x1b[0m(new_item.created_at).to eql(now)

        \x1b[31m  expected: 2018-06-20 19:42:26.290538462 +0000\x1b[0m
        \x1b[31m       got: 2018-06-20 19:42:26.290538000 +0000\x1b[0m

        \x1b[31m  (compared using eql?)\x1b[0m
\`\`\`
EOF

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"