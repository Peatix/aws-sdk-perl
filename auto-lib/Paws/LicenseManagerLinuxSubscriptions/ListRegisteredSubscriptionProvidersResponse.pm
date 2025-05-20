
package Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegisteredSubscriptionProviders => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerLinuxSubscriptions::RegisteredSubscriptionProvider]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RegisteredSubscriptionProviders => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::RegisteredSubscriptionProvider>]

The list of BYOL registration resources that fit the criteria you
specified in the request.


=head2 _request_id => Str


=cut

