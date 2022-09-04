FROM postgres:14.5-alpine

COPY dummy_data.sql /docker-entrypoint-initdb.d/
# COPY dummy_data.sql /
