FROM python:alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app



COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt  
# Install the dependencies

COPY . /usr/src/app/  
# Copy the application to the container



CMD ["python3",  "manage.py", "runserver", "0.0.0.0:8000"] 
# Run the application

EXPOSE 8000