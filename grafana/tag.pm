package Tag;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : no doc for the time-being
    my $self = bless {
        key      => $args->{key},
        operator => $args->{operator},
        value    => $args->{value},
    }, $class;
}

1;