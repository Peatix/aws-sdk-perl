
package Paws::EKS::ListAccessPoliciesResponse;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AccessPolicy]', traits => ['NameInRequest'], request_name => 'accessPolicies');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 AccessPolicies => ArrayRef[L<Paws::EKS::AccessPolicy>]

The list of available access policies. You can't view the contents of
an access policy using the API. To view the contents, see Access policy
permissions
(https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html#access-policy-permissions)
in the I<Amazon EKS User Guide>.


=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated request,
where C<maxResults> was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the C<nextToken> value. This value is null when there are
no more results to return.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 _request_id => Str


=cut

