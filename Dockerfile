FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# requirements.txt 복사 및 설치
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 복사
COPY . /app/

# 기본 실행 명령어
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
