# 국민개헌넷

## 실환경 구축 방법

## 로컬 개발 환경 구축 방법

기본적인 Rail 개발 환경에 rbenv, puma-dev를 이용합니다.

### rbenv 설정

```
$ rbenv install 2.3.1
$ bundle install
```

### puma-dev 설정

```
$ brew install puma/puma/puma-dev
$ sudo puma-dev -setup
$ puma-dev link -n parti
```

### 소스관리 설정

반드시 https://github.com/awslabs/git-secrets를 설치하도록 합니다. 설치 후에 반드시 https://github.com/awslabs/git-secrets#installing-git-secrets 이 부분을 참고하여 로컬 레포지토리에 모두 설정 합니다.

```
$ git secrets --install
$ git secrets --register-aws
```

그리고 데이터베이스는 각 레포지토리마다 다릅니다. 아래 git hook 을 설정합니다

```
$ echo $'#!/bin/sh\nif [ "1" == "$3" ]; then spring stop && powder restart; fi' > .git/hooks/post-checkout
$ chmod +x .git/hooks/post-checkout
```

### 데이터베이스 준비

#### mysql 설정
mysql을 구동해야합니다. mysql의 encoding은 utf8mb4를 사용합니다. mysql은 버전 5.6 이상을 사용합니다.

encoding세팅은 my.cnf에 아래 설정을 넣고 반드시 재구동합니다. 참고로 맥에선 /usr/local/Cellar/mysql/(설치하신 mysql버전 번호)/my.cnf입니다.

```
[mysqld]
innodb_file_format=Barracuda
innodb_large_prefix = ON
```

#### 연결 정보

프로젝트 최상위 폴더에 local_env.yml이라는 파일을 만듭니다. 데이터베이스 연결 정보를 아래와 예시를 보고 적당히 입력합니다.

```
development:
  database:
    username: 사용자이름
    password: 암호
```