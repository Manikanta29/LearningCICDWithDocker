#1. use official python image as base image
FROM python:3.11-slim

#2. set working directory in the container
WORKDIR /app

#3. copy dependency file to the working directory
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#4. copy the application code to the working directory
COPY . .

#5. expose the port the app runs on
EXPOSE 5000

#6. command to run the application
CMD ["python", "app.py"]