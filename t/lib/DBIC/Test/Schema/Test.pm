# $Id: /local/DBIx-Class-UUIDColumns/t/lib/DBIC/Test/Schema/Test.pm 20 2007-05-06T00:59:25.373485Z claco  $
package DBIC::Test::Schema::Test;
use strict;
use warnings;

BEGIN {
    use base qw/DBIx::Class::Core/;
};

__PACKAGE__->load_components(qw/UUIDColumns Core/);
__PACKAGE__->table('test');
__PACKAGE__->add_columns(
  'id' => {
    data_type => 'varchar',
    size      => 36,
  },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->uuid_columns('id');

1;
