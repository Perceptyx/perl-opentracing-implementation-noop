requires                "OpenTracing::Interface";
requires                "OpenTracing::Implementation", '0.03';
requires                "aliased";

on 'test' => sub {
    requires            "Test::Most";
    requires            "Test::OpenTracing::Interface";
};
