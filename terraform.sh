#!/bin/bash

echo "<h4>terraform/$project Terraform plan</h4>" > plan.html
echo '<details><summary>Terraform plan</summary>' >> plan.html
echo '<div><code><pre class="term">' >> plan.html
cat plan.log | terminal-to-html >> plan.html
echo '</pre></code></div></details>' >> plan.html
cat plan.html | head -c 1048576 | buildkite-agent annotate --style 'info' --context "ctx-plan-$project"z
