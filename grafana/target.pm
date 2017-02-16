package Target;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : no doc for the time-being
    my $self = bless {
            alias => $args->{collapse} || JSON::false,
            dsType => $args->{editable} || JSON::true,
            groupBy   => $args->{height} || "200px",
            measurement   => $args->{panels} || [ ],
            policy    => $args->{title} || "New row",
            refId => $args->{refId} || JSON::false,
            resultFormat => $args->{editable} || JSON::true,
            select   => $args->{height} || "200px",
            tags   => $args->{panels} || [ ],
        }, $class;
}

1;