package CustomUUIDMaker;

use strict;
use warnings;

use base qw/DBIx::Class::UUIDColumns::UUIDMaker/;
use Data::UUID ();

sub as_string {
    return Data::UUID->new->to_string(Data::UUID->new->create);
};

1;
__END__