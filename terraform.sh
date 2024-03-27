#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOM
<h4>terraform/$project Terraform plan</h4>
<details>
    <summary>Terraform plan</summary>
    \`\`\`term
    $(cat plan.log)
    \`\`\`
</details>
EOM

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"