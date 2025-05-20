
package Paws::IoTManagedIntegrations::ListOtaTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::OtaTaskSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListOtaTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 Tasks => ArrayRef[L<Paws::IoTManagedIntegrations::OtaTaskSummary>]

A list of all of the over-the-air (OTA) tasks.


=head2 _request_id => Str


=cut

