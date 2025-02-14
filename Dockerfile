# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install required dependencies
RUN pip install flask

# Make port 5000 available to the outside world
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]