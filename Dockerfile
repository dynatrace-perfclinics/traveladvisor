FROM python:3-bookworm

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY app.py  ./
COPY . .

EXPOSE 8080

CMD [ "python", "app.py"]