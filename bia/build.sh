#ECR_REGISTRY="051162627864.dkr.ecr.us-east-1.amazonaws.com"
#aws ecr get-login-password --profile formacao --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t bia .
zip -r bia.zip . -x "*.git*" -x "node_modules/*" -x "*.zip"
#docker tag bia:latest $ECR_REGISTRY/bia:latest
#docker push $ECR_REGISTRY/bia:latest
