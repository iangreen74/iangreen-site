#!/bin/bash

set -e

echo "🔄 Syncing website to S3..."
aws s3 sync ./website s3://iangreen.io --delete

echo "🚀 Creating CloudFront invalidation..."
aws cloudfront create-invalidation \
  --distribution-id E159CVW7QBB1IX \
  --paths "/*"

echo "✅ Deployment complete."
