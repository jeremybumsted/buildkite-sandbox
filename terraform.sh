#!/bin/bash

terraform plan -out=plan.log

echo "<h4>Terraform plan</h4>" > plan.html
echo '<details><summary>Terraform plan</summary>' >> plan.html
echo '<div><code><pre class="term">' >> plan.html

echo "~~~ doing the terminal thing"
cat plan.log | terminal-to-html >> plan.html
echo '</pre></code></div></details>' >> plan.html

echo "~~~ here is the html"
cat plan.html

echo "~~~ Now we annotate"
cat plan.html | head -c 1048576 | buildkite-agent annotate --style 'info' --context "ctx-plan-result"

rm plan*