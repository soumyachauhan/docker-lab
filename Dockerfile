# Use a lightweight official Python 3.10 image
FROM python:3.10-slim

# Add metadata
LABEL student="Soumya Chauhan"
LABEL lab="Lab 1"

# Define a build-time argument for the environment (default is development)
ARG ENV=development
ENV ENV_MODE=$ENV

# Set the working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app
COPY . .

# Expose port 8000 for Flask
EXPOSE 8000

# Print the environment mode and run the app
CMD echo "Starting app in $ENV_MODE mode" && python main.py