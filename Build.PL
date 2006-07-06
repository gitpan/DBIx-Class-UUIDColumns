use strict;
use Module::Build;

my %arguments = (
    create_makefile_pl => 'passthrough',
    license            => 'perl',
    module_name        => 'DBIx::Class::UUIDColumns',
    requires           => {
        'DBIx::Class'               => 0.06002,
    },
    build_requires      => {
        'DBD::SQLite'               => 1.11,
        'SQL::Translator'           => 0.07
    },
    recommends          => {
        'Data::UUID'                => 0,
        'APR::UUID'                 => 0,
        'UUID'                		=> 0,
        'Win32::Guidgen'            => 0,
        'Win32API::GUID'            => 0,
    },
    create_makefile_pl => 'passthrough',
    create_readme      => 1,
    test_files         => [ glob('t/*.t')],
    add_to_cleanup     => ['t/var/*']
);

Module::Build->new(%arguments)->create_build_script;

