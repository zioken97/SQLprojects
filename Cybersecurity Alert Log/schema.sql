-- Users or systems involved in alerts
CREATE TABLE entities (
    entity_id INT PRIMARY KEY,
    name VARCHAR(100),       -- Could be a user, hostname, IP
    type VARCHAR(50)         -- 'user', 'server', 'router', etc.
);

-- Log of alerts
CREATE TABLE alerts (
    alert_id INT PRIMARY KEY,
    entity_id INT,
    alert_type VARCHAR(50),          -- 'unauthorized login', 'malware', etc.
    severity VARCHAR(20),            -- 'low', 'medium', 'high', 'critical'
    alert_time TIMESTAMP,
    resolved BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (entity_id) REFERENCES entities(entity_id)
);
