use strict;
use Test::More 'no_plan';
use FindBin;
use lib $FindBin::Bin . '/lib';

use People;

is_deeply \@People::ISA, [], 'People has not extended';

ok +People->can('profile'), 'People->can(\'profile\')';

is_deeply +People->profile, {
    name   => 'taro',
    age    => '25',
    sex    => 'male',
    height => '168.5',
    weight => '60',
}, 'The profile is set';
