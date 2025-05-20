
package Paws::Prometheus::DescribeLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::Prometheus::LoggingConfigurationMetadata', traits => ['NameInRequest'], request_name => 'loggingConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfiguration => L<Paws::Prometheus::LoggingConfigurationMetadata>

A structure that displays the information about the logging
configuration.


=head2 _request_id => Str


=cut

