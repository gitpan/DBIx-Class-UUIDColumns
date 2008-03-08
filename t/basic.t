#!perl -wT
# $Id: /local/DBIx-Class-UUIDColumns/t/basic.t 1336 2007-05-06T00:59:25.373485Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use DBIC::Test tests => 2;

    use_ok('DBIx::Class::UUIDColumns');
    use_ok('DBIx::Class::UUIDColumns::UUIDMaker');
};
