# Use the official Python image from DockerHub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install Flask

# Expose port 8000 (instead of 8080 or 5000)
EXPOSE 8000

# Run the Flask application
CMD ["python", "app.py"]
