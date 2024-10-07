FROM python:alpine3.19
LABEL maintainer="begavlad068@gmail.com"

ENV PYTHONNBUFFERED=1

WORKDIR /app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]