package OpenTracing::Implementation::NoOp;



use aliased 'OpenTracing::Implementation::NoOp::Tracer';



sub bootstrap {
    my $implementation_class = shift;
    
    my @implementation_args  = @_;
    
    return Tracer->new( @implementation_args );
}



1;
