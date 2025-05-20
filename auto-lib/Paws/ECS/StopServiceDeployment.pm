
package Paws::ECS::StopServiceDeployment;
  use Moose;
  has ServiceDeploymentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceDeploymentArn' , required => 1);
  has StopType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopServiceDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::StopServiceDeploymentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopServiceDeployment - Arguments for method StopServiceDeployment on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopServiceDeployment on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method StopServiceDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopServiceDeployment.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $StopServiceDeploymentResponse = $ecs->StopServiceDeployment(
      ServiceDeploymentArn => 'MyString',
      StopType             => 'ABORT',      # OPTIONAL
    );

    # Results:
    my $ServiceDeploymentArn =
      $StopServiceDeploymentResponse->ServiceDeploymentArn;

    # Returns a L<Paws::ECS::StopServiceDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/StopServiceDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceDeploymentArn => Str

The ARN of the service deployment that you want to stop.



=head2 StopType => Str

How you want Amazon ECS to stop the service.

The valid values are C<ROLLBACK>.

Valid values are: C<"ABORT">, C<"ROLLBACK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopServiceDeployment in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

