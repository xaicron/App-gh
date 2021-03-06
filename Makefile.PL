use inc::Module::Install;

name     'App-gh';
version  '0.09';
all_from 'lib/App/gh.pm';
author   q{Cornelius <cornelius.howl@gmail.com>};
license  'perl';

build_requires 'Test::More';

requires 'JSON';
requires 'JSON::XS';
requires 'LWP::Simple';
requires 'File::Temp';
requires 'Config::INI::Reader';

install_script 'scripts/gh';

tests 't/*.t';
author_tests 'xt';

auto_install;

WriteAll;
