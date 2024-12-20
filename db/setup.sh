docker build -t teams_db ./db
docker run --name pg_db --rm -e POSTGRES_PASSWORD=password -d teams_db
