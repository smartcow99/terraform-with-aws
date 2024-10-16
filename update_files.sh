#!/bin/bash

# 파일 이름을 인자로 받음
FILE_NAME=$1

# 수정된 파일을 S3에 업로드
aws s3 cp ./$FILE_NAME s3://$BUCKET_NAME/$FILE_NAME
