
package Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerLinuxSubscriptions::Instance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Instance>]

An array that contains instance objects.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

