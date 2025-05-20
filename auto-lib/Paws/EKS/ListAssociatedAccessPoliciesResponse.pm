
package Paws::EKS::ListAssociatedAccessPoliciesResponse;
  use Moose;
  has AssociatedAccessPolicies => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AssociatedAccessPolicy]', traits => ['NameInRequest'], request_name => 'associatedAccessPolicies');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListAssociatedAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 AssociatedAccessPolicies => ArrayRef[L<Paws::EKS::AssociatedAccessPolicy>]

The list of access policies associated with the access entry.


=head2 ClusterName => Str

The name of your cluster.


=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated request,
where C<maxResults> was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the C<nextToken> value. This value is null when there are
no more results to return.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 PrincipalArn => Str

The ARN of the IAM principal for the C<AccessEntry>.


=head2 _request_id => Str


=cut

