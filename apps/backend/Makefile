up:
	docker-compose up -d;

start:
	bin/dev;

dbprepare:
	bin/rails db:drop db:create db:migrate RAILS_ENV=test;

dbreseed:
	bin/rails db:drop db:create db:migrate db:seed RAILS_ENV=development;

ci:
	make brakeman rubocop rspec;

code-fix:
	make rubocop-fix;

rspec:
	bin/rspec;

brakeman:
	bin/brakeman;

rubocop:
	bin/rubocop;

rubocop-fix:
	bin/rubocop -A;
