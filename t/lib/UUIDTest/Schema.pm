package # hide from PAUSE 
    UUIDTest::Schema;

use base qw/DBIx::Class::Schema/;

no warnings qw/qw/;

__PACKAGE__->load_classes(qw/ Test /);

1;
