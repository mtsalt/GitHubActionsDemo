# TODO_1: create variable for 'docker-compose' command string
# TODO_2: 

start:
	docker-compose up -d
new-site:
	make start
	docker-compose exec hugo hugo new site .
clone-theme:
	make start
	docker-compose exec hugo git clone $(url) /src/themes/$(theme_name)
build-site:
	make start
	docker-compose exec hugo hugo
new-post:
	make start
	docker-compose exec hugo hugo new $(name)/index.md
new-special-post:
	make start
	docker-compose exec hugo hugo new $(name).md
start-server:
	make start
	docker-compose exec hugo hugo server -D
stop:
	docker-compose down