# Cex Trading App

## License
Apache License, Version 2.0

Demo: 
<img src="./main.png" alt="Cex Trading App" />

* Connect to docker portgresql
docker compose exec db psql --username=binomo --dbname=binomo

* require docker desktop
docker compose up -d
docker exec -it backend-dev-1 python manage.py migrate
docker exec -it backend-dev-1 python manage.py collectstatic
docker compose up 

docker exec -it bitnano python wizard.py
