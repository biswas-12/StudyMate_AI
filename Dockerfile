FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "--server.address=0.0.0.0", "--server.port=8080"]

CMD ["pdf.py"]
