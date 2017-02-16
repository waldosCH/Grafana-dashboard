package Pannel;
use strict;
use warnings FATAL => 'all';

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : http://docs.grafana.org/reference/dashboard/ (pannel expl...)
    my $self = bless {

        }, $class;
}

1;