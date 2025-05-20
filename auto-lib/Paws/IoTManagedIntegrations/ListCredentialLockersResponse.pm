
package Paws::IoTManagedIntegrations::ListCredentialLockersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::CredentialLockerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListCredentialLockersResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::IoTManagedIntegrations::CredentialLockerSummary>]

The list of credential lockers.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

