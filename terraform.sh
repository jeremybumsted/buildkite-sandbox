#!/bin/bash

terraform plan > plan.log
cat plan.log

project=${BUILDKITE_PIPELINE_SLUG}

planAnnotationFile="plan.html"
    cat > "$planAnnotationFile" <<- EOM
        <pre>
        <code>$(terminal-to-html < plan.log)</code>
        <pre>
EOM

    buildkite-agent annotate \
      --style "info" \
      --context "ctx-plan-$project" < "$planAnnotationFile"


