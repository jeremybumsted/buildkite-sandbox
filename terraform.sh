#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<-MARKDOWN
        ### Checking out this plan
        \`\`\`term
        $(cat plan.log)
        \`\`\`
MARKDOWN

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"