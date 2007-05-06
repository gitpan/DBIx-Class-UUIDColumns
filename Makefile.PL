# $Id: Makefile.PL 3246 2007-05-06 00:59:25Z claco $
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

build_requires 'DBD::SQLite'     => '1.11';

recommends 'Data::UUID';
recommends 'Data::Uniqid';
recommends 'APR::UUID';
recommends 'UUID';
recommends 'Win32::Guidgen';
recommends 'Win32API::GUID';

tests "t/*.t t/*/*.t";
clean_files "DBIx-Class-UUIDColumns-* t/var";

eval {
    system 'pod2text lib/DBIx/Class/UUIDColumns.pm > README';
};

auto_install;
WriteAll;
