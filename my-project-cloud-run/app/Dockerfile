# Use the official lightweight Python image.
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose port (for clarity; optional)
EXPOSE 8080

# Run the app
CMD ["python", "main.py"]
