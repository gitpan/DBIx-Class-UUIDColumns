#!perl -w
# $Id: /local/DBIx-Class-UUIDColumns/t/pod_spelling.t 25 2007-07-02T00:57:22.905474Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use DBIC::Test;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::Spelling 0.11';
    plan skip_all => 'Test::Spelling 0.11 not installed' if $@;
};

set_spell_cmd('aspell list');

add_stopwords(<DATA>);

all_pod_files_spelling_ok();

__DATA__
uuid
uuids
Chia
liang
Kao
Laco
OpenBSD
UUIDMaker
behaviour
isa
CONTRIBUTERS
