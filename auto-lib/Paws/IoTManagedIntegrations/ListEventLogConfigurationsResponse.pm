
package Paws::IoTManagedIntegrations::ListEventLogConfigurationsResponse;
  use Moose;
  has EventLogConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::EventLogConfigurationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListEventLogConfigurationsResponse

=head1 ATTRIBUTES


=head2 EventLogConfigurationList => ArrayRef[L<Paws::IoTManagedIntegrations::EventLogConfigurationSummary>]

A list of each event log configuration and pertinent information.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

