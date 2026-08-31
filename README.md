# NYC Taxi Project

PySpark project for cleaning, transforming, and analyzing **NYC Yellow Taxi Trip Records**.

## Project Goal

This project processes large-scale NYC taxi trip data using **PySpark**.

The pipeline includes:

- data cleaning
- feature engineering
- exploratory data analysis (EDA)
- trip and revenue analysis

---

## Tech Stack

- Python
- PySpark
- Java 17
- uv
- Docker
- Docker Compose
- Ruff
- Prek
- Git / GitHub

---

## Project Structure

```text
.
├── analysis.py
├── cleaning.py
├── main.py
├── exploration.md
├── data/
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── pyproject.toml
├── uv.lock
└── .pre-commit-config.yaml
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/AnastasiiaHorobets/project.git
cd project
```

Install dependencies:

```bash
uv sync
```

---

## Run Project

Run the pipeline:

```bash
uv run python main.py
```

---

## Docker

The project can be run in a Docker container with Python 3.13, Java 17, PySpark, and all required dependencies.

### Build Docker Image

```bash
docker build -t nyc-taxi-project .
```

Check the image size:

```bash
docker images
```

### Run with Docker Compose

The local `data/` directory is mounted to `/app/data` inside the container using a volume.

```bash
docker compose up --build
```

Volume mapping:

```text
./data:/app/data
```

This allows the container to read and write data without including the dataset in the Docker image.

### Stop and Remove Container

```bash
docker compose down
```

### Inspect Container

Enter a running container:

```bash
docker exec -it <container_name> bash
```

Check the operating system inside the container:

```bash
cat /etc/os-release
```

The Docker image is based on Debian GNU/Linux 12 (bookworm).

### Docker Ignore

The `.dockerignore` file excludes unnecessary files and directories from the Docker build context:

```text
.venv/
__pycache__/
.ruff_cache/
.git/
.DS_Store
data/
```

The `data/` directory is excluded because it is mounted separately with Docker Compose.

---

## Code Quality

Run linting:

```bash
uvx ruff check .
```

Run formatting:

```bash
uvx ruff format .
```

Run configured hooks:

```bash
prek run --all-files
```

---

## Exploratory Analysis

Dataset exploration notes are available in:

```text
exploration.md
```