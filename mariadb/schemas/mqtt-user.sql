CREATE USER 'mqtt'@'172.26.0.5' Identified BY 'mqtt-password';
GRANT ALL privileges ON `mqtt-data`.* TO 'mqtt'@'172.26.0.5';
CREATE USER 'grafana'@'172.26.0.6' Identified BY 'grafana-password';
GRANT ALL privileges ON `mqtt-data`.* TO 'grafana'@'172.26.0.6';
FLUSH PRIVILEGES;