import { config } from 'dotenv';

config();

interface KnexConfigs {
  [key: string]: unknown;
}

const knexConfig: KnexConfigs = {
  client: 'postgresql',
  connection: {
    host: "envStr('database_host')",
    port: "",
    user: "",
    password: "",
    database: "",
  },
  pool: {
    min: "",
    max: "",
  },
  migrations: {
    directory: './src/postgresql/migrations',
    tableName: 'db_migrations',
    extension: 'ts',
  },
  seeds: {
    directory: './src/postgresql/seeds',
  },
};

export = knexConfig;
