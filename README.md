# S3 버킷 관리 프로젝트 ☁️

AWS S3를 사용하여 정적 웹사이트를 호스팅하고, HTML 파일을 관리하는 Terraform 스크립트를 작성하는 것입니다.

## 프로젝트 구조 🗂️
```
.
├── update_files.sh         # 수정 파일 업로드
├── index.html
├── main.html
├── bucket.tf               # S3 버킷 생성
├── upload_index.tf         # index.html 파일 업로드
├── upload_main.tf          # main.html 파일 업로드
├── update_index.tf         # index.html 수정파일 업로드
└── update_main.tf          # main.html 수정파일 업로드

```

## 작업 내용 🛠️

1. **S3 버킷 생성**: 
   - `bucket.tf` 파일을 사용하여 S3 버킷을 생성하였습니다.
   - 버킷 이름: `bucket_name`

2. **HTML 파일 업로드**: 
   - `upload_index.tf` 파일을 통해 `index.html` 파일을 S3 버킷에 업로드하였습니다.
   - `upload_main.tf` 파일을 통해 `main.html` 파일을 S3 버킷에 업로드하였습니다.

3. **HTML 파일 수정**: 
   - `update_index.tf` 파일을 사용하여 `index.html` 파일을 수정한 후 재업로드하였습니다.
   - `update_main.tf` 파일을 사용하여 `main.html` 파일을 수정한 후 재업로드하였습니다.

## 사용한 기술 스택 🖥️
- **AWS S3**: 정적 웹사이트 호스팅
- **Terraform**: 인프라 코드 관리


## 필수 요구 사항 ⚙️

이 프로젝트를 실행하기 위해서는 다음과 같은 사전 설정이 필요합니다.

### 1. AWS CLI 설정 ☁️

AWS CLI가 설치되어 있어야 하며, AWS 계정의 자격 증명을 설정해야 합니다.

#### AWS CLI 설치
- **Windows**:
  1. [AWS CLI 설치 페이지](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html)에서 설치 프로그램 다운로드.
  2. 설치 프로그램을 실행하여 설치.

- **macOS**:
  ```bash
  brew install awscli
  ```
- **Linux**:
   ```bash
   sudo apt-get update
   sudo apt-get install awscli
   ```

#### AWS CLI 설정
설치가 완료되면, 다음 명령어를 통해 AWS CLI를 설정합니다:
   ```bash
   aws configure
   ```

##### 이 명령어를 실행하면 다음 정보를 입력해야 합니다:
- AWS Access Key ID: AWS 계정의 액세스 키 ID.
- AWS Secret Access Key: AWS 계정의 비밀 액세스 키.
- Default region name: 기본 리전 (예: ap-northeast-2).
- Default output format: 출력 형식 (예: json).

### 2. Terraform 설치 🚀

Terraform을 설치하기 위해 아래의 단계를 따릅니다.

#### Terraform 설치
- **Windows**:

   Terraform 다운로드 페이지에서 Windows용 zip 파일 다운로드.
   압축을 풀고, terraform.exe 파일을 PATH가 설정된 디렉토리에 복사.

- **macOS**:

   ```bash
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   ```
- **Linux**:

아래 명령어를 사용하여 Terraform을 다운로드:

   ```bash
   wget https://releases.hashicorp.com/terraform/$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)/terraform_$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)_linux_amd64.zip
   ```

#### 압축 해제 및 설치:
   ```bash
   unzip terraform_*_linux_amd64.zip
   sudo mv terraform /usr/local/bin/
   ```
#### 설치 확인
Terraform이 제대로 설치되었는지 확인하려면 다음 명령어를 입력합니다:

   ```bash
   terraform -version
   ```
정상적으로 설치되었다면 Terraform의 버전 정보가 출력됩니다.


## 실행 방법 🚀

### 1. 프로젝트 디렉토리로 이동 후 초기화:
```bash
terraform init
```
### 2. 계획 확인:
```bash
terraform plan
```
### 3. 적용:
```bash
terraform apply
```
### 4. 필요 시, 삭제:
```bash
terraform destroy
```
### 주의 사항 ⚠️
> 각 .tf 파일이 올바른 순서로 실행되도록 하며, 파일 수정 시 변경 사항을 확인해야 합니다. <br>
> S3 버킷의 퍼블릭 액세스 설정 및 정책을 확인하여 접근 권한을 설정해야 합니다.
