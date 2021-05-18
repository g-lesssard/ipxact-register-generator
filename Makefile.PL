use strict;
use warnings;
 
use 5.008;
 
use ExtUtils::MakeMaker;
WriteMakefile
(
    NAME          => 'xlsx2ipxact',
    AUTHOR        => 'legoritma <https://github.com/legoritma> & g-lesssard <https://github.com/g-lesssard>',
    VERSION_FROM  => 'code/xlsx2ipxact',
    LICENSE       => 'perl',
    PREREQ_PM     => {
          'Spreadsheet::ParseExcel' => '0.65',
          'Spreadsheet::XLSX' => '0.13',
          'Spreadsheet::Read' => '0.54',
          'Template' => '2.78'
    },
    BUILD_REQUIRES => {
          'Other::Module' => '0'
    },
    EXE_FILES => [
           'code/Register.pm',
           'code/xlsx2ipxact',
           'code/ipxact_template.tt'
    ],
    META_MERGE    => {
        'meta-spec' => { version => 2 },
         resources => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/g-lesssard/ipxact-register-generator.git',
                 web  => 'https://github.com/g-lesssard/ipxact-register-generator',
             },
             bugtracker => {web => 'https://github.com/g-lesssard/ipxact-register-generator/issues'},
             homepage   => 'https://github.com/g-lesssard/ipxact-register-generator',
         },
    },
 
);