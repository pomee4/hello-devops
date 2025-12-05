FROM python:3.11-slim

# Set working directory
WORKDIR /workspace

# Install common tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY ../requirements.txt /workspace/requirements.txt

# Install python packages
RUN pip install --no-cache-dir -r /workspace/requirements.txt || true

# Copy the full project (except files ignored by .dockerignore)
COPY .. /workspace

# Expose Flask port
EXPOSE 8080

# Do NOT start Flask here!
# CMD ["python", "app.py"]
CMD ["sleep", "infinity"]
