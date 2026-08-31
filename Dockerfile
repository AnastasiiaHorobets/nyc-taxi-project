FROM python:3.13.5-slim
WORKDIR /app

RUN apt-get update && apt-get install -y openjdk-17-jdk 
RUN pip install uv
 
COPY pyproject.toml uv.lock /app/
RUN uv sync --no-install-project

COPY cleaning.py analysis.py main.py /app/

CMD ["uv", "run", "python", "main.py"]