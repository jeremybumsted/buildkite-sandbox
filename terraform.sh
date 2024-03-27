#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOF
        \`\`\`term
        This is a \033[0;31mtest\033[0m\n
        \`\`\`
EOF

printf '%b\n' "$(cat $planAnnotationFile)" | buildkite-agent annotate \
    --style "info" \
    -- context "ctx-plan-$project"

    # buildkite-agent annotate \
    #   --style "info" \
    #   --context "ctx-plan-$project" < "$planAnnotationFile"