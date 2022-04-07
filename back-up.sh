docker run \
  -e AWS_ACCESS_KEY_ID=AKIAUXXYDPHZ7FAYIAUJ \
  -e S3_BUCKET_URL=s3://demo-1001/ \
  -e AWS_DEFAULT_REGION=us-east-2 \
  -e CRON_SCHEDULE="* 4 * * *" \
  -e BACKUP_NAME=jenkins-backup \
  -v jenkins-data:/var/jenkins_home:/data:ro \
  peterrus/s3-cron-backup
