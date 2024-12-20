docker build -t teams_api ./api
docker run --rm -p 8000:8000 -d teams_api
