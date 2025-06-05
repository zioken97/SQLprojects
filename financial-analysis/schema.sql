-- Clients table
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    profile VARCHAR(20), -- 'conservative', 'balanced', 'aggressive'
    birth_date DATE,
    region VARCHAR(50)
);

-- Assets table
CREATE TABLE assets (
    asset_id INT PRIMARY KEY,
    asset_type VARCHAR(50),  -- 'stocks', 'bonds', 'real estate', etc.
    risk_level VARCHAR(20),  -- 'low', 'medium', 'high'
);

-- Patrimoni (client assets) table
CREATE TABLE patrimoni (
    record_id INT PRIMARY KEY,
    client_id INT,
    asset_id INT,
    value DECIMAL(12,2),
    acquisition_date DATE,
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
);
