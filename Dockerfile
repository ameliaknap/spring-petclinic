#urzywanie wbudowanego gradle dla skrocenia operacji
FROM gradle:latest
WORKDIR /Pulpit/DevOps/lab03
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/spring-projects/spring-petclinic
WORKDIR /Pulpit/DevOps/lab03/spring-petclinic
