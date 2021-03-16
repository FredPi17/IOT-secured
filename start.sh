docker-compose -f docker-compose-$1.yml down --volumes --remove-orphans
docker-compose -f docker-compose-$1.yml up --build