# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy requirements (if you have a requirements.txt)
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose port Flask runs on
EXPOSE 5000

# Set environment variables (can be set in docker-compose too)
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["python", "app.py"]