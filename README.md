# S3 버킷 관리 프로젝트 ☁️

AWS S3를 사용하여 정적 웹사이트를 호스팅하고, HTML 파일을 관리하는 Terraform 스크립트를 작성하는 것입니다.

## 프로젝트 구조 🗂️
```
.
├── bucket.tf               # S3 버킷 생성
├── upload_index.tf         # index.html 파일 업로드
├── upload_main.tf          # main.html 파일 업로드
├── update_index.tf         # index.html 파일 수정 및 재업로드
└── update_main.tf          # main.html 파일 수정 및 재업로드
```

## 작업 내용 🛠️

1. **S3 버킷 생성**: 
   - `bucket.tf` 파일을 사용하여 S3 버킷을 생성하였습니다.
   - 버킷 이름: `ce13-bucket01`

2. **HTML 파일 업로드**: 
   - `upload_index.tf` 파일을 통해 `index.html` 파일을 S3 버킷에 업로드하였습니다.
   - `upload_main.tf` 파일을 통해 `main.html` 파일을 S3 버킷에 업로드하였습니다.

3. **HTML 파일 수정**: 
   - `update_index.tf` 파일을 사용하여 `index.html` 파일을 수정한 후 재업로드하였습니다.
   - `update_main.tf` 파일을 사용하여 `main.html` 파일을 수정한 후 재업로드하였습니다.

## 사용한 기술 스택 🖥️
- **AWS S3**: 정적 웹사이트 호스팅
- **Terraform**: 인프라 코드 관리

## 실행 방법 🚀

### 1. Terraform 설치: [Terraform 설치 가이드](https://learn.hashicorp.com/tutorials/terraform/install-cli)
### 2. 프로젝트 디렉토리로 이동 후 초기화:
```bash
terraform init
```
### 3. 계획 확인:
```bash
terraform plan
```
### 4. 적용:
```bash
terraform apply
```
### 5. 필요 시, 삭제:
```bash
terraform destroy
```
### 주의 사항 ⚠️
> 각 .tf 파일이 올바른 순서로 실행되도록 하며, 파일 수정 시 변경 사항을 확인해야 합니다. <br>
> S3 버킷의 퍼블릭 액세스 설정 및 정책을 확인하여 접근 권한을 설정해야 합니다.
