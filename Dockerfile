FROM python:3.12
WORKDIR /IMAGE-PROCESSING-API
COPY requirements.txt .
RUN pip install -r requirements.txt 
COPY . . 
EXPOSE 5000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]