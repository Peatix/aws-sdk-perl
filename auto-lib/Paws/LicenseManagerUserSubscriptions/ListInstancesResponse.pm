
package Paws::LicenseManagerUserSubscriptions::ListInstancesResponse;
  use Moose;
  has InstanceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::InstanceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListInstancesResponse

=head1 ATTRIBUTES


=head2 InstanceSummaries => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::InstanceSummary>]

An array of C<InstanceSummary> resources that contain details about the
instances that provide user-based subscriptions and also meet the
request criteria.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

