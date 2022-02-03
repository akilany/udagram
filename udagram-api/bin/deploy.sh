eb init udagram-app --platform node.js --region us-east-1

eb create --sample udagram-app-dev

eb use udagram-app-dev

eb deploy udagram-app-dev

eb setenv AWS_REGION=$AWS_REGION AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_BUCKET=$AWS_BUCKET AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PORT=$POSTGRES_PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD URL=$URL JWT_SECRET=$JWT_SECRET PORT=$PORT