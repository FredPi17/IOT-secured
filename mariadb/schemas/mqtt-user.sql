CREATE USER 'mqtt'@'172.26.0.5' Identified BY 'mqtt-password';
GRANT ALL privileges ON `mqtt-data`.* TO 'mqtt'@'172.26.0.5';
FLUSH PRIVILEGES;