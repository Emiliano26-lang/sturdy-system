# Start from a lightweight base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install dependencies (if you have requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app will run on
EXPOSE 8000

# Default command to run your application
CMD ["python", "main.py"]
