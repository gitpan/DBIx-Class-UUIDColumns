# $Id: /local/DBIx-Class-UUIDColumns/t/lib/DBIC/Test/Schema.pm 1336 2007-05-06T00:59:25.373485Z claco  $
package DBIC::Test::Schema;
use strict;
use warnings;

BEGIN {
    use base qw/DBIx::Class::Schema/;
};
__PACKAGE__->load_classes;

sub dsn {
    return shift->storage->connect_info->[0];
};

1;
