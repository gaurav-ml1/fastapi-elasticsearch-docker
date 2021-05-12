FROM python:3.7

WORKDIR /code
COPY requirements.txt /code/
COPY app /code/

RUN pip install -r requirements.txt

EXPOSE 8001
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8001", "--reload"]

