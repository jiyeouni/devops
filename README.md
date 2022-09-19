# devops 
- https://bit.ly/skt_devops
- https://github.com/DevOpsRunbook/devops

# AWS
## Account: 255380800200
## IAM User: skt-user10
## Instance:  ec2-18-143-135-98.ap-southeast-1.compute.amazonaws.com
## VPC/Subnet: 
172.42.0.0/16
-   ap-southeast-1a 172.42.0.0/20
-   ap-southeast-1c 172.42.16.0/20

## Security Group : sg-00176a0e09c4a6f02    

## S3 : user10-terraform
## DynamoDB : user10-terraform

## ECR:
1. 인증 토큰을 검색하고 레지스트리에 대해 Docker 클라이언트를 인증합니다.
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 255380800200.dkr.ecr.ap-southeast-1.amazonaws.com
2. 다음 명령을 사용하여 도커 이미지를 빌드합니다. 도커 파일을 처음부터 새로 빌드하는 방법에 대한 자세한 내용은 여기  지침을 참조하십시오. 이미지를 이미 빌드한 경우에는 이 단계를 건너뛸 수 있습니다.
docker build -t skt-user10 .
3. 빌드가 완료되면 이미지에 태그를 지정하여 이 리포지토리에 푸시할 수 있습니다.
docker tag skt-user10:latest 255380800200.dkr.ecr.ap-southeast-1.amazonaws.com/skt-user10:latest
4. 다음 명령을 실행하여 이 이미지를 새로 생성한 AWS 리포지토리로 푸시합니다.
docker push 255380800200.dkr.ecr.ap-southeast-1.amazonaws.com/skt-user10:latest



# Github
https://github.com/jiyeouni/devops


