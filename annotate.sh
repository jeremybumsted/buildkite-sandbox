name=$1
value=$2


annotation=$(cat << EOF
    # Hello ${name}
    See the Results [${value}](https://google.com)
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"