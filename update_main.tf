# 이미 존재하는 S3 버킷에 main.html 파일 수정
resource "null_resource" "update_main" {
  provisioner "local-exec" {
    command = "bash ./update_files.sh main.html"
  }
}
