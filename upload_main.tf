# 이미 존재하는 S3 버킷에 main.html 파일을 업로드
resource "aws_s3_object" "upload_main" {
  bucket        = "bucket_name"
  key           = "main.html"
  source        = "main.html"
  content_type  = "text/html"
}

