
package Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerLinuxSubscriptions::Subscription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 Subscriptions => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Subscription>]

An array that contains subscription objects.


=head2 _request_id => Str


=cut

