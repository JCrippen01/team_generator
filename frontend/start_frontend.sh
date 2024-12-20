docker build -t teams_frontend ./frontend
docker run --rm -p 80:80 -d teams_frontend
