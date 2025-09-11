CREATE TABLE eta (
    route_id TEXT NOT NULL,
    sequence_number TEXT NOT NULL,
    vehicle_id TEXT NOT NULL,
    eta TIMESTAMP WITHOUT TIME ZONE,
    delivered TIMESTAMP WITHOUT TIME ZONE,
    PRIMARY KEY (route_id, sequence_number)
);