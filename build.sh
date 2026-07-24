docker build -t bia .
zip -r bia.zip . -x "*.git*" -x "node_modules/*" -x "*.zip"
eb deploy --label "bia-$(date +%Y%m%d%H%M%S)"

