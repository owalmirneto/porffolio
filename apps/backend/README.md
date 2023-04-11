# Backend made with [Ruby on Rails](https://rubyonrails.org)

## Requirements

 * Ruby 3.2.2 (We strongly recommend installing Ruby with [rbenv](https://github.com/rbenv/rbenv), a version manager for ruby.)
 * Rails 7.0+
 * PostgreSQL 15.1

## Installation

### Application

Let's start by installing the ruby dependencies

```bash
make setup
```

### Database

We use Postgres version 15.1 as our database. You can run it the way you think it's the best for yourself, but you can ask for a docker-compose file to make things faster.

Make sure you set up all the env variables at your `.env` file to match the host, username, password and database name for your local database o docker database.

After the database is running, you should run seeds:

```bash
make dbreseed # to recreate and seed database
```

### Start application

Before starting the application, we need to start services with docker-compose in daemon:

```bash
make up
```

Finally, to start the application, run:
```bash
make start
```

### CI

```bash
make ci
```

### Brakeman

```bash
make brakeman
```

### Rubocop

```bash
make rubocop
# or
make rubocop-fix
```

### Rspec

```bash
make rspec
```
