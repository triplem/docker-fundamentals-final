FROM postgres:9-alpine

# set necesary postgres user, could be overwritten using env var
ARG POSTGRES_USER=gordonuser
ENV POSTGRES_USER=${POSTGRES_USER:-POSTGRES_USER}

# set postgres db, could be overwritten using env var
ARG POSTGRES_DB=ddev
ENV POSTGRES_DB=${POSTGRES_DB:-POSTGRES_DB}

# copy configuration files
COPY *.conf /usr/share/postgresql/9.6/
# copy initialization script (picked up by postgres-image)
COPY init-db.sql /docker-entrypoint-initdb.d/
