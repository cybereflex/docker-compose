BEGIN;

create user replica with replication encrypted password 'replica';

SELECT pg_create_physical_replication_slot('replication_slot');

COMMIT;