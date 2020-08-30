# Glowing Docker Postgres

A Boilerplate for Docker implementation in a Node/postgres application.

## Technologies used

- Node
- Typescript
- Postgres
- Knex

## Docker Setup

1. Update Args

- Update the args field in `docker-compose.yml` to your choice of values, others can remain as is, but you would need to update things like `DATABASE_NAME`, ETC.

1. Build Docker

```bash
docker-compose up -d --build
```

2: Run Migrations

```bash
docker-compose exec arcade-node-app knex migrate:latest --env development
```

3: Usage

- Visit your application on the port exposed
