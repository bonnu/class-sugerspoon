package Suger::Mobility;

use Class::SugerSpoon;

Class::SugerSpoon->setup_suger_features(
    as_is    => [qw/ running_speed muscle /],
    metadata => {
        mobility => sub { +{} },
    },
);

sub running_speed { caller->mobility->{running_speed} = shift }
sub muscle        { caller->mobility->{muscle}        = shift }

1;

__END__
