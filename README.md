# Perl - OpenTracing Implementation with NoOp

The NoOp Implementation will 'disable' the entire OpenTracing infrastructure by
making almost every method do nothing, or return a 'NoOp' object.

This way, none of the code will break if there is no OpenTracing active.
