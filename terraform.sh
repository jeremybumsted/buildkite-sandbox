#!/bin/bash

terraform plan > plan.log
the_plan=$(cat plan.log)

project=${BUILDKITE_PIPELINE_SLUG}
code_fence="\`\`\`"

tfplan=$(cat <<-EOF
    ${code_fence}\n${the_plan}\n${code_fence}
EOF
)

planAnnotationFile="plan.html"
cat > "$planAnnotationFile" <<-EOF
    <summary><details><pre class="term">
    <code>
        Hello.
    </code>
    </pre></summary></details>
EOF

buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < $planAnnotationFile

echo "$tfplan" | buildkite-agent annotate \
    --style "success" \
    --context "ctx-test"

echo -e "\`\`\`term\nThis is a \033[0;31mtest\033[0m\n\`\`\`" | buildkite-agent annotate --style="warning"