
package Paws::IoTManagedIntegrations::ListOtaTaskExecutionsResponse;
  use Moose;
  has ExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::OtaTaskExecutionSummaries]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListOtaTaskExecutionsResponse

=head1 ATTRIBUTES


=head2 ExecutionSummaries => ArrayRef[L<Paws::IoTManagedIntegrations::OtaTaskExecutionSummaries>]

A list of all of the over-the-air (OTA) task executions.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

