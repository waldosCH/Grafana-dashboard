package Row;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : http://docs.grafana.org/reference/dashboard/#rows
    my $self = bless {
            collapse => $args->{collapse} || JSON::false,
            editable => $args->{editable} || JSON::true,
            height   => $args->{height} || "200px",
            panels   => $args->{panels} || [ ],
            title    => $args->{title} || "New row"

        }, $class;
}

1;