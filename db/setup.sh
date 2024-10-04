docker build -t people_db ./db
docker run --name pg_db --rm -e POSTGRES_PASSWORD=password -d people_db