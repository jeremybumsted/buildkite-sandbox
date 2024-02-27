name=$1
value=$2


annotation=$(cat << EOF
   <pre><h1>hello ${name} your number is ${value}</h1></pre>
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"