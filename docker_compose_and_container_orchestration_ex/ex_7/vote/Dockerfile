# syntax=docker/dockerfile:1
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies first to leverage Docker cache
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the voting app source code
COPY . .

# Expose the port the app listens on (default 80 in example-voting-app)
EXPOSE 80

# (Optional) Create a non-root user for security
RUN useradd --create-home appuser
USER appuser

# Default command to start the app (assumes using Gunicorn with Flask)
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "--workers", "4", "--access-logfile", "-", "--log-file", "-"]
