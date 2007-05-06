#!perl -wT
# $Id: basic.t 3246 2007-05-06 00:59:25Z claco $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use DBIC::Test tests => 2;

    use_ok('DBIx::Class::UUIDColumns');
    use_ok('DBIx::Class::UUIDColumns::UUIDMaker');
};
