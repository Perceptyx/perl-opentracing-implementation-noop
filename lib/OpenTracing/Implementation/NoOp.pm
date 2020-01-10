package OpenTracing::Implementation::NoOp;

use strict;
use warnings;

our $VERSION = '0.05';



use aliased 'OpenTracing::Implementation::NoOp::Tracer';



sub bootstrap {
    my $implementation_class = shift;
    
    my @implementation_args  = @_;
    
    return Tracer->new( @implementation_args );
}



BEGIN {
    use Role::Tiny::With;
    with 'OpenTracing::Implementation::Interface::Bootstrap'
        if $ENV{OPENTRACING_INTERFACE}
} # check at compile time, perl -c will work



1;
