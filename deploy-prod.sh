docker rm webtour --force
docker build --tag webtour:latest .
docker run -p 80:5678 -e VIRTUAL_HOST="webtour.comcastmediatechcenter.org" -e LETSENCRYPT_HOST="webtour.comcastmediatechcenter" --network=webproxy -d --name webtour webtour:latest
