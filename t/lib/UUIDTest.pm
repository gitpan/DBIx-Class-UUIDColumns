package # hide from PAUSE 
    UUIDTest;

use strict;
use warnings;
use UUIDTest::Schema;

sub initialise {

  my $db_file = "t/var/UUIDTest.db";
  
  unlink($db_file) if -e $db_file;
  unlink($db_file . "-journal") if -e $db_file . "-journal";
  mkdir("t/var") unless -d "t/var";
  
  my $dsn = "dbi:SQLite:${db_file}";
  
  return UUIDTest::Schema->compose_connection('UUIDTest' => $dsn);
}
  
sub is_uuid {
    my $value = defined $_[0] ? shift : '';

    return ($value =~ m/  ^[0-9a-f]{8}-
                           [0-9a-f]{4}-
                           [0-9a-f]{4}-
                           [0-9a-f]{4}-
                           [0-9a-f]{12}$
                      /ix);
};

1;
