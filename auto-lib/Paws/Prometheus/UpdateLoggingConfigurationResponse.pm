
package Paws::Prometheus::UpdateLoggingConfigurationResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Prometheus::LoggingConfigurationStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::UpdateLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::Prometheus::LoggingConfigurationStatus>

A structure that contains the current status of the logging
configuration.


=head2 _request_id => Str


=cut

