package Dashboard;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : http://docs.grafana.org/reference/dashboard/#dashboard-json
    my $self = bless {
            id            => $args->{id} || JSON::null,
            title         => $args->{title} || 'New dashboard',
            tags          => $args->{tags} || [ ],
            style         => $args->{style} || 'dark',
            timezone      => $args->{timezone} || 'browser',
            editable      => $args->{editable} || JSON::true,
            hideControls  => $args->{hideControls} || JSON::false,
            graphTooltip  => $args->{graphTooltip} || 1,
            rows          => $args->{rows} || [ ],
            time          => $args->{time} || {
                from => 'now-6h',
                to   => 'now'
            },
            timepicker    => $args->{timepicker} || {
                time_options      => [ ],
                refresh_intervals => [ ]
            },
            templating    => $args->{templating} || {
                list => [ ]
            },
            annotations   => $args->{annotations} || {
                list => [ ]
            },
            schemaVersion => $args->{schemaVersion} || 7,
            version       => $args->{version} || 0,
            links         => $args->{links} || [ ],
        }, $class;
}


1;