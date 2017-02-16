package Pannel_diagram;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    # Grafana documentation : http://docs.grafana.org/reference/dashboard/#rows
    my $self = bless {
            colors          => $args->{colors} || [
                'rgba(50, 172, 45, 0.97)',
                'rgba(237, 129, 40, 0.89)',
                'rgba(245, 54, 54, 0.9)'
            ],
            content         => $args->{content},
            datasource      => $args->{datasource} || '${DS_INFLUXDB-DATASOURCE-K8S}',
            editable        => $args->{editable} || JSON::true,
            error           => $args->{error} || JSON::false,
            format          => $args->{format} || 'none',
            graphId         => $args->{graphId} || 'diagram_1',
            height          => $args->{height} || '600px',
            id              => $args->{id} || 1,
            init            => $args->{init} || {
                arrowMarkerAbsolute => JSON::true,
                cloneCssStyles      => JSON::false,
                flowchart           => {
                    htmlLabels  => JSON::true,
                    useMaxWidth => JSON::true
                },
                gantt               => {
                    barGap               => 4,
                    barHeight            => 20,
                    fontFamily           => '\'Open-Sans\', \'sans-serif\'',
                    fontSize             => 11,
                    gridLineStartPadding => 35,
                    leftPadding          => 75,
                    numberSectionStyles  => 3,
                    titleTopMargin       => 25,
                    topPadding           => 50
                },
                logLevel            => 3,
                sequenceDiagram     => {
                    actorMargin     => 50,
                    bottomMarginAdj => 1,
                    boxMargin       => 10,
                    boxTextMargin   => 5,
                    diagramMarginX  => 50,
                    diagramMarginY  => 10,
                    height          => 65,
                    messageMargin   => 35,
                    mirrorActors    => JSON::true,
                    noteMargin      => 10,
                    useMaxWidth     => JSON::true,
                    width           => 150
                },
                startOnLoad         => JSON::false
            },
            interval        => $args->{interval} || '>60s',
            legend          => $args->{legend} || {
                avg      => JSON::true,
                current  => JSON::true,
                gradient => {
                    enabled => JSON::true,
                    show    => JSON::true
                },
                max      => JSON::true,
                min      => JSON::true,
                show     => JSON::true,
                total    => JSON::true
            },
            links           => $args->{links} || [ ],
            mappingType     => $args->{mappingType} || 1,
            maxDataPoints   => $args->{maxDataPoints} || 100,
            maxWidth        => $args->{maxWidth} || JSON::false,
            nullPointMode   => $args->{nullPointMode} || 'connected',
            seriesOverrides => $args->{seriesOverrides} || [
                {
                    alias      => '.*cpu',
                    thresholds => '80'
                },
                {
                    alias      => '.*mem',
                    thresholds => '900000000'
                },
                {
                    alias      => '.*hdd',
                    thresholds => '35000000000'
                }
            ],
            span            => $args->{span} || 12,
            targets         => $args->{targets},
            thresholds      => $args{thresholds} || '0, 10',
            timeFrom        => $args{timeFrom} || JSON::null,
            title           => $args{title},
            type            => $args->{type} || 'jdbranham- diagram- panel',
            valueMaps       => $args->{valueMaps} || [
                {
                    op    => '=',
                    text  => 'N/A',
                    value => 'null'
                }
            ],
            valueName       => $args->{valueName} || 'avg',
            valueOptions    => $args->{valueOptions} || [
                'avg',
                'min',
                'max',
                'total',
                'current'
            ]
        }, $class;
}

1;