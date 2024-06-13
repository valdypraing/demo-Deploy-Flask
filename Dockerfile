FROM python:3.8

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

ENV FLASK_APP=main.py

EXPOSE 8080

CMD ["python3", "-m", "flask", "run"]
