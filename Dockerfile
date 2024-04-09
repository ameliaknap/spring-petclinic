FROM gradle:latest AS builder
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/spring-projects/spring-petclinic
WORKDIR /app/spring-petclinic

FROM builder AS build
RUN ./gradlew build -x test