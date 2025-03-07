#!/bin/bash
set -e

DB_NAME="climate_project"
DB_USER="postgres"
DB_HOST="localhost"

psql -h $DB_HOST -U $DB_USER -c "DROP DATABASE IF EXISTS $DB_NAME;"
psql -h $DB_HOST -U $DB_USER -c "CREATE DATABASE $DB_NAME;"
psql -h $DB_HOST -U $DB_USER -d $DB_NAME -f sql/create_tables.sql
psql -h $DB_HOST -U $DB_USER -d $DB_NAME -f sql/populate_tables.sql
psql -h $DB_HOST -U $DB_USER -d $DB_NAME -f sql/queries.sql > queries_output.txt

echo "Complete"
