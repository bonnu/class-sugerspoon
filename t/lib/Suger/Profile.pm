package Suger::Profile;

use Class::SugerSpoon;

Class::SugerSpoon->setup_suger_features(
    as_is    => [qw/ name age sex height weight /],
    metadata => {
        profile => sub { +{} },
    },
);

sub name   { caller->profile->{name}   = shift }
sub age    { caller->profile->{age}    = shift }
sub sex    { caller->profile->{sex}    = shift }
sub height { caller->profile->{height} = shift }
sub weight { caller->profile->{weight} = shift }

1;

__END__
