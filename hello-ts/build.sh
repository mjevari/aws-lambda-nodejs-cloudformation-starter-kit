#!/bin/bash

{
  rm hello-ts.zip
  cd hello-ts/dist; zip -r ../../hello-ts.zip *; cd ../..;
} &> /dev/null

Version=$(md5sum -b hello-ts.zip | awk '{print $1}')

{
  aws s3 cp hello-ts.zip s3://$S3_BUCKET_NAME/hello-ts-$Version.zip
  aws s3 cp hello-ts.zip s3://$S3_BUCKET_NAME/hello-ts-latest.zip
  rm hello-ts.zip
} &> /dev/null

echo $Version