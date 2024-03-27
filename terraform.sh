#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<MARKDOWN
        \`\`\`term Hello \`\`\`
        Terraform says this is the plan:
        \`\`\`term
            $(cat plan.log)
        \`\`\`
MARKDOWN

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"