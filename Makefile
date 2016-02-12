clean:
	docker-compose down

build:
	docker-compose build

start: clean
	docker-compose up -d postgres

connect: start
	docker-compose run app

error: start
	docker-compose logs postgres
	+
osx:
	@docker-machine restart default
	@echo
	@echo
	@echo "Kör följande kommando för att (förhoppningsvis) fixa Docker:"
	@echo 'eval "$$(docker-machine env default)"'
