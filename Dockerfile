# Use a lightweight official Python image as the base
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependency file (requirements.txt) into the container
COPY requirements.txt .

# Install the Python dependencies using pip
# --no-cache-dir keeps the image size small by not storing download cache
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Open port 8000 to the host machine (Flask app runs on this port)
EXPOSE 8000

# Define the default command to run the app when the container starts
CMD ["python", "main.py"]
