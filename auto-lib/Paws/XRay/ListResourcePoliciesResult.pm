
package Paws::XRay::ListResourcePoliciesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourcePolicies => (is => 'ro', isa => 'ArrayRef[Paws::XRay::ResourcePolicy]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListResourcePoliciesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not currently supported.


=head2 ResourcePolicies => ArrayRef[L<Paws::XRay::ResourcePolicy>]

The list of resource policies in the target Amazon Web Services
account.


=head2 _request_id => Str


=cut

