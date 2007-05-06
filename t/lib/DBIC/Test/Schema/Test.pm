# $Id: Test.pm 3246 2007-05-06 00:59:25Z claco $
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
