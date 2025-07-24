# Use official Python 3.8 slim-buster image as base
FROM python:3.8-slim-buster

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy project files
COPY . /app/

RUN mkdir /app/staticfiles

COPY static /app/staticfiles

# Expose port (default Django dev server port)
EXPOSE 8000

# Default command to run the Django development server
CMD ["gunicorn", "SimplePageApp.wsgi:application", "--bind", "0.0.0.0:8000"]
