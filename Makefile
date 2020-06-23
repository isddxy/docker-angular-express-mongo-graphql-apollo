init: all_clone up
	

up:
	docker-compose up	

all_clone: backend-clone frontend-clone


backend-clone:
	cd backend/ && git clone https://github.com/isddxy/server-express-mongo-graphql-apollo.git server

backend-install:
	cd backend/ && make init

backend-start:
	cd backend/ && make up

backend-stop:
	cd backend/ && make down


frontend-clone:
	cd frontend/ && git clone https://github.com/isddxy/angular-wetalkmoney.git angular

frontend-install:
	cd frontend/ && make init

frontend-start:
	cd frontend/ && make up

frontend-stop:
	cd frontend/ && make down


uninit:
	rm -f backend/server