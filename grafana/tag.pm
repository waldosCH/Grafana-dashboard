package Tag;
use strict;
use warnings FATAL => 'all';

use JSON;

sub new {
    my ($class, $args) = @_;
    my $self = bless {
        key      => $args->{key},
        operator => $args->{operator},
        value    => $args->{value},
    }, $class;
}

1;