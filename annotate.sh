name=$1
value=$2


annotation=$(cat << EOF
   <pre>hello ${name} your number is ${value}</pre>
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"