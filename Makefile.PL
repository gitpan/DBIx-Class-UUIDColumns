# $Id: /local/DBIx-Class-UUIDColumns/Makefile.PL 30 2007-09-25T03:31:38.834942Z claco  $
use strict;
use warnings;
use inc::Module::Install 0.65;

name 'DBIx-Class-UUIDColumns';
license 'perl';
perl_version '5.008001';
all_from 'lib/DBIx/Class/UUIDColumns.pm';

requires 'DBIx::Class' => '0.07005';

if (
    !eval 'require Data::UUID' &&
    !eval 'require ARE::UUID' &&
    !eval 'require UUID' &&
    !eval 'require Win32::Guidgen' &&
    !eval 'require Win32API::GUID' &&
    !eval 'require Data::Uniqid'
    ) {
    requires 'Data::UUID';
};

requires 'Class::Accessor::Grouped';
build_requires 'DBD::SQLite'     => '1.11';

recommends 'Data::UUID';
recommends 'Data::Uniqid';
recommends 'APR::UUID';
recommends 'UUID';
recommends 'Win32::Guidgen';
recommends 'Win32API::GUID';

tests "t/*.t t/*/*.t";
clean_files "DBIx-Class-UUIDColumns-* t/var";

auto_install;

WriteMakefile(
  dist => {
    PREOP => 'pod2text lib/DBIx/Class/UUIDColumns.pm > README'
  }
);
