FROM python:3.12-slim
WORKDIR /application
COPY . /application
RUN apt-get update && apt-get install -y --no-install-recommends gcc libpq-dev && \
    pip install --no-cache-dir -r requirements.txt
CMD ["streamlit", "run", "app.py", "--server.port=8503", "--server.address=0.0.0.0"]