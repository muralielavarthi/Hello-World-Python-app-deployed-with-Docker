#Latest ubuntu base image
FROM ubuntu:latest

#Set the working directory in the image
WORKDIR /app

#Copy files from the host file system to the image file system
COPY . /app

#Install necessary packages 
RUN apt-get update && apt-get install python3 python3-pip

#Set environment variables
ENV NAME world

#Run command to start the application
CMD ["python3","app.py"]  

