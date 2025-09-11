CREATE SCHEMA IF NOT EXISTS eta_schema;


CREATE TABLE IF NOT EXISTS eta_schema.eta (
    route_id TEXT NOT NULL,
    sequence_number TEXT NOT NULL,
    vehicle_id TEXT NOT NULL,
    eta TIMESTAMP WITHOUT TIME ZONE,
    delivered TIMESTAMP WITHOUT TIME ZONE,
    PRIMARY KEY (route_id, sequence_number)
);

GRANT ALL PRIVILEGES ON SCHEMA eta_schema TO "postgres-db";
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA eta_schema TO "postgres-db";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres-db" IN SCHEMA eta_schema GRANT ALL ON TABLES TO "postgres-db";