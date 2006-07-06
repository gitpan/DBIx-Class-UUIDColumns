use strict;
use warnings;
use Test::More;

BEGIN {
    plan skip_all => 'needs Data::UUID for testing'
        unless
            eval 'require Data::UUID' ||
            eval 'require APR::UUID' ||
            eval 'require UUID' ||
            eval 'require Win32::Guidgen' ||
            eval 'require Win32API::GUID';

    plan skip_all => 'needs SQL::Translator for testing'
        unless eval 'require SQL::Translator';

    plan tests => 3;
}

use lib qw(t/lib);

use UUIDTest;
use UUIDTest::Setup;

my $schema = UUIDTest->schema;
my $row;


$row = $schema->resultset('Test')->create({ });
ok UUIDTest::is_uuid( $row->id ), 'got something that loks like a UUID from Auto';

UUIDTest::Schema::Test->uuid_class('CustomUUIDMaker');
Class::C3->reinitialize();
$row = $schema->resultset('Test')->create({ });
ok UUIDTest::is_uuid( $row->id ), 'got something that loks like a UUID from CustomUUIDMaker';

UUIDTest::Schema::Test->uuid_class('::Data::UUID');
Class::C3->reinitialize();
$row = $schema->resultset('Test')->create({ });
ok UUIDTest::is_uuid( $row->id ), 'got something that loks like a UUID from Data::UUID';

1;
