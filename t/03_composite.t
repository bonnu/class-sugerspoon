use strict;
use Test::More 'no_plan';
use FindBin;
use lib $FindBin::Bin . '/lib';

{
    package Hyde;

    use Suger::Profile;
    use Suger::Mobility;

    name 'hyde';
          
    age '40'; # since 1969
          
    sex 'male';

    height '156cm';

    weight 'About 40kg';

    running_speed '5km per hour';

    muscle '30kg';

    no Suger::Profile;
    no Suger::Mobility;
}

is_deeply \@Hyde::ISA, [], 'Hyde has not extended';

ok +Hyde->can('profile'), 'Hyde->can(\'profile\')';
ok +Hyde->can('profile'), 'Hyde->can(\'mobility\')';

is_deeply +Hyde->profile, {
    name   => 'hyde',
    age    => '40', # since 1969
    sex    => 'male',
    height => '156cm',
    weight => 'About 40kg',
}, 'The profile is set';

is_deeply +Hyde->mobility, {
    running_speed => '5km per hour',
    muscle        => '30kg',
}, 'The mobility is set';
