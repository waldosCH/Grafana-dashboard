package timepicker;
use strict;
use warnings FATAL => 'all';

use JSON;


sub new {
    my ($class, $args) = @_;
    # Grafana documentation : http://docs.grafana.org/reference/dashboard/#timepicker
    my $self = bless {
            collapse => $args->{collapse} ||  JSON::false,
            enable => $args->{enable} ||  JSON::true,
            notice => $args->{notice} ||  JSON::false,
            now => $args->{now} ||  JSON::true,
            refresh_intervals => $args->{refresh_intervals} ||  [
                '5s',
                '10s',
                '30s',
                '1m',
                '5m',
                '15m',
                '30m',
                '1h',
                '2h',
                '1d'
            ],
            status => $args->{status} ||  "Stable",
            time_options => $args->{time_options} ||  [
                '5m',
                '15m',
                '1h',
                '3h',
                '6h',
                '12h',
                '24h',
                '2d',
                '3d',
                '4d',
                '7d',
                '30d'
            ],
            type => $args->{type} ||  "timepicker"

        }, $class;
}

1;