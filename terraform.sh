#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}
code_fence="\`\`\`"
tfplan=$(cat <<-EOF
    ${code_fence}term
        \x1b[31mFailure/Error:\x1b[0m \x1b[32mexpect\x1b[0m(new_item.created_at).to eql(now)

        \x1b[31m  expected: 2018-06-20 19:42:26.290538462 +0000\x1b[0m
        \x1b[31m       got: 2018-06-20 19:42:26.290538000 +0000\x1b[0m

        \x1b[31m  (compared using eql?)\x1b[0m
    \`\`\`
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