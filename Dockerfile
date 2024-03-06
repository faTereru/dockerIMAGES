FROM alpine:latest  
LABEL autor=PASHA-faTerer
EXPOSE 8080
RUN apt update
RUN apt install git nodejs 
