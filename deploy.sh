docker rm webtour --force
docker build --tag webtour:latest .
docker run -p 80:5678 -d --name webtour webtour:latest
