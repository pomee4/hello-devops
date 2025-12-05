# Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source code
COPY . .

# Expose the port Flask uses
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
