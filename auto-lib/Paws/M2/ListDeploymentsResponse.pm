
package Paws::M2::ListDeploymentsResponse;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::M2::DeploymentSummary]', traits => ['NameInRequest'], request_name => 'deployments', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListDeploymentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Deployments => ArrayRef[L<Paws::M2::DeploymentSummary>]

The list of deployments that is returned.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to this operation to retrieve the next set of
items.


=head2 _request_id => Str


=cut

