#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

code_fence="\`\`\`"

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOM
<details>
<summary>Hello</summary>
${code_fence}term
    World
${code_fence}
</details>
EOM

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"