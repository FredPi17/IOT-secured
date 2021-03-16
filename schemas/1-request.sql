INSERT INTO 
	vmq_auth_acl ( 
		mountpoint, client_id, username, password, publish_acl, subscribe_acl
	)
VALUES
	('','admin','admin', crypt('admin', 'bf'), '[{"pattern": "%u/#"}]','[{"pattern": "%u/#"}]'),
	('','client1','client1', crypt('client1', 'bf'), '[{"pattern": "/client2/c/1234"}, {"pattern": "/client1/c/1234"}]', '[{"pattern": "/client2/c/1234"}, {"pattern": "/client1/c/1234"}]'),
	('','client2','client2', crypt('client2', 'bf'), '[{"pattern": "/client2/c/1234"}, {"pattern": "/client1/c/1234"}]', '[{"pattern": "/client2/c/1234"}, {"pattern": "/client1/c/1234"}]');
    
