# 이미 존재하는 S3 버킷에 index.html 파일을 업로드
resource "aws_s3_object" "upload_index" {
  bucket        = "bucket_name"
  key           = "index.html"
  source        = "index.html"
  content_type  = "text/html"
}
