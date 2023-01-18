if [[ $1 == "--new-statics" ]] # Carefully with this command if you have a DB in dokcer with volumes it can delete data!
then
	docker-compose down  -v
  docker-compose up -d
	exit
else
  echo "starting containers"
  docker-compose up -d
  echo "Website launched."
fi
