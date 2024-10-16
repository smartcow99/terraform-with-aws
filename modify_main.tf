# 이미 존재하는 S3 버킷에 main.html 파일 수정
resource "aws_s3_object" "modify_main" {
  bucket        = "bucket_name"
  key           = "main.html"
  source        = "modified_main.html"
  content_type  = "text/html"
}

