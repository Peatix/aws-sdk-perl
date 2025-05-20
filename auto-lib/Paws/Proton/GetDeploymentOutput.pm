
package Paws::Proton::GetDeploymentOutput;
  use Moose;
  has Deployment => (is => 'ro', isa => 'Paws::Proton::Deployment', traits => ['NameInRequest'], request_name => 'deployment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetDeploymentOutput

=head1 ATTRIBUTES


=head2 Deployment => L<Paws::Proton::Deployment>

The detailed data of the requested deployment.


=head2 _request_id => Str


=cut

1;