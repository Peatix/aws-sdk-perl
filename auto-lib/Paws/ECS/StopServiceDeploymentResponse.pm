
package Paws::ECS::StopServiceDeploymentResponse;
  use Moose;
  has ServiceDeploymentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceDeploymentArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopServiceDeploymentResponse

=head1 ATTRIBUTES


=head2 ServiceDeploymentArn => Str

The ARN of the stopped service deployment.


=head2 _request_id => Str


=cut

1;