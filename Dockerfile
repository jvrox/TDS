# Use an official Python image as a base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the repository to the container
COPY . .

# Install dependencies (if needed)
RUN pip install --no-cache-dir -r requirements.txt || true

# Run a simple script when the container starts
CMD ["python", "-c", "print('Hello from Docker!')"]
