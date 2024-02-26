name=$1
value=$2


annotation=$(cat << EOF
    <!DOCTYPE html>
    <h1>Hello ${name} :buildkite:<h1>
    <div>
    <p>See some results below!</p>
    <a href="https://google.com">${value}</a>
    </div>
    </html>
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"