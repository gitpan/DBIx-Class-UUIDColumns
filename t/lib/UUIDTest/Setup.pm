use strict;
use warnings;
use UUIDTest;

my $schema = UUIDTest->initialise;

$schema->storage->on_connect_do([ "PRAGMA synchronous = OFF" ]);

my $dbh = $schema->storage->dbh;

$schema->deploy;

$schema->storage->dbh->do("PRAGMA synchronous = OFF");

1;
