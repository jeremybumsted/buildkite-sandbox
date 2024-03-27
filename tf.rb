summary = capture!("terraform", "show", "plan.out")

# Terraform 0.15 introduced a whole lot of useless noisy output about
# drift which has been ignored before the actual plan output. Throw
# away the noise. There's a big horizontal rule of `-----` in the middle.
summary = summary.split(/^─{10,}(?:\e\[0m)?\n/).last.strip

annotation = <<~MARKDOWN
  Terraform determines the following changes need to be made:

  \```term
  #{summary}
  \```
MARKDOWN

system!("buildkite-agent", "annotate", "--style", "warning", stdin_data: annotation)