
package Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse;
  use Moose;
  has InstanceUserSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::InstanceUserSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse

=head1 ATTRIBUTES


=head2 InstanceUserSummaries => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::InstanceUserSummary>]

Metadata that describes the list user association operation.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

