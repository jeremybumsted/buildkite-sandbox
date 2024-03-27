#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

code_fence="\`\`\`"

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOM
        ${code_fence}term
        $(cat plan.log)
        ${code_fence}
EOM

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"


