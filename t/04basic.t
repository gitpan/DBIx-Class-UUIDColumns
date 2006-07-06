use strict;
use warnings;
use Test::More;

BEGIN {
    eval "use DBD::SQLite";
    plan $@
        ? ( skip_all => 'needs DBD::SQLite for testing' )
        : ( tests => 2 );       
}

use lib qw(t/lib);

use_ok('DBIx::Class::UUIDColumns');
use_ok('DBIx::Class::UUIDColumns::UUIDMaker');