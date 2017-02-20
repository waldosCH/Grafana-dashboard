#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use JSON;
use dashboard;
use row;
use pannel_diagram;

my $date_start = localtime();
my $epoc_start = time();
print "Dashboard build test - start - $date_start\n";

my $pannel = Pannel_diagram->new({

});

my $row = Row->new({
    panels => [$pannel],
});

my $dashboard = Dashboard->new({
    id      => 38,
    title   => 'k8s health',
    rows    => [$row],
    refresh => '1m'
});

my %dashboard_hash = %{$dashboard};



my $json = to_json($dashboard, { convert_blessed => 1 });


my $date_stop = localtime();
my $duration = time() - $epoc_start;
print "\nDashboard build test - stop - $date_stop - Duration $duration\n";