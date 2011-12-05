package Demo;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;

use Catalyst qw/
    ConfigLoader
    Static::Simple
    StackTrace
    ErrorCatcher
/;

extends 'Catalyst';

our $VERSION = '0.01';

__PACKAGE__->config(
    name => 'Demo',
    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
);

# Start the application
__PACKAGE__->setup();

1;
