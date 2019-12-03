package OpenTracing::Implementation::NoOp;

use strict;
use warnings;

our $VERSION = '0.01';



use aliased 'OpenTracing::Implementation::NoOp::Tracer';



sub bootstrap {
    my $implementation_class = shift;
    
    my @implementation_args  = @_;
    
    return Tracer->new( @implementation_args );
}



1;
