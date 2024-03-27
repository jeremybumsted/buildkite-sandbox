#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

code_fence="\`\`\`"
planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOM
<h4>terraform/$project Terraform plan</h4>
<details><summary>Terraform plan</summary>
${code_fence}term
$(cat plan.log)
${code_fence}
</details>
EOM

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"