
package Paws::Proton::ListDeploymentsOutput;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::Proton::DeploymentSummary]', traits => ['NameInRequest'], request_name => 'deployments' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListDeploymentsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Deployments => ArrayRef[L<Paws::Proton::DeploymentSummary>]

An array of deployment with summary data.


=head2 NextToken => Str

A token that indicates the location of the next deployment in the array
of deployment, after the current requested list of deployment.


=head2 _request_id => Str


=cut

1;