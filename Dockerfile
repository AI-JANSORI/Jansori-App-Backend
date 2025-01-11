# Python 3.12 이미지 사용
FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# requirements.txt 파일 복사
COPY requirements.txt /app/

# pip 업그레이드
RUN pip install --upgrade pip

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 앱 파일 복사
COPY . /app

