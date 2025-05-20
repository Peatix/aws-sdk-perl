
package Paws::IoTManagedIntegrations::ListManagedThingsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::ManagedThingSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListManagedThingsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::IoTManagedIntegrations::ManagedThingSummary>]

The list of managed things.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

