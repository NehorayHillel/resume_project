FROM postgres:latest
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=resume_db
COPY init.sql /docker-entrypoint-initdb.d/
