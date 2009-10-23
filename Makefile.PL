use inc::Module::Install;
name 'Class-SugerSpoon';
all_from 'lib/Class/SugerSpoon.pm';

build_requires 'Test::More';
auto_include;
WriteAll;
