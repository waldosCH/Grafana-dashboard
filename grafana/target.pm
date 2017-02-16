package Target;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : no doc for the time-being
    my $self = bless {
            alias        => $args->{alias},
            dsType       => $args->{dsType} || 'influxdb',
            groupBy      => $args->{groupBy} || [
                {
                    params => [
                        '$interval'
                    ],
                    type   => 'time'
                },
                {
                    params => [
                        JSON::null
                    ],
                    type   => 'fill'
                }
            ],
            measurement  => $args->{measurement},
            policy       => $args->{policy} || 'default',
            refId        => $args->{refId} || 'A',
            resultFormat => $args->{resultFormat} || 'time_series',
            select       => $args->{heiselectght} || [
                [
                    {
                        params => [
                            'value'
                        ],
                        type   => 'field'
                    },
                    {
                        params => [ ],
                        'type' => 'mean'
                    }
                ]
            ],
            tags         => $args->{tags},
            hide         => $args->{hide} || JSON::false,
            query        => $args->{query},
            rawQuery     => JSON::true,
        }, $class;
}

1;