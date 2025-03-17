psql -c "DROP DATABASE IF EXISTS Correct;"
psql -c "CREATE DATABASE climate project;"

psql -d yourdbname -f reset.sql
psql -d yourdbname -f create_tables.sql
psql -d yourdbname -f populate_tables.sql