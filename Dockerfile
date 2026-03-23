# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask in the container
RUN pip install flask

# Expose port 5000 to allow access to the app
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
