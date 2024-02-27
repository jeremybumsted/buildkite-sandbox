name=$1
value=$2


annotation=$(cat << EOF
   <pre>
   <h2>hello ${name} your number is ${value}</h2>
   <a href="https://google.com">Find the solution to your problem here</a>
   </pre>
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"