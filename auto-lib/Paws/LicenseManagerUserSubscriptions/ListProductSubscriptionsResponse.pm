
package Paws::LicenseManagerUserSubscriptions::ListProductSubscriptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductUserSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::ProductUserSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListProductSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 ProductUserSummaries => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::ProductUserSummary>]

Metadata that describes the list product subscriptions operation.


=head2 _request_id => Str


=cut

