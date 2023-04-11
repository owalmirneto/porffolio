up:
	docker-compose up -d;

start:
	bin/dev;

dbprepare:
	bin/rails db:drop db:create db:migrate RAILS_ENV=test;

dbreseed:
	bin/rails db:drop db:create db:migrate db:seed RAILS_ENV=development;
