build:
	@docker build -t scout:v4.7.3 ../scout-forked/
	@docker build -t scout-setup:v1.0 ../scout-docker/scout-setup/
	@docker build -t scout-import:v1.0 ../scout-docker/scout-import/
	@docker build -t scout-remove:v1.0 ../scout-docker/scout-remove/
	@docker build -t scout-adduser:v1.0 ../scout-docker/scout-adduser/
	@docker build -t scout-removeuser:v1.0 ../scout-docker/scout-removeuser/


setup:
	@docker-compose run --rm scout-setup


run:
	@docker-compose up -d scout

stop:
	@docker-compose down
