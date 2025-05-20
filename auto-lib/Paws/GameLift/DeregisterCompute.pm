
package Paws::GameLift::DeregisterCompute;
  use Moose;
  has ComputeName => (is => 'ro', isa => 'Str', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterCompute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeregisterComputeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeregisterCompute - Arguments for method DeregisterCompute on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterCompute on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeregisterCompute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterCompute.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeregisterComputeOutput = $gamelift->DeregisterCompute(
      ComputeName => 'MyComputeNameOrArn',
      FleetId     => 'MyFleetIdOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeregisterCompute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeName => Str

The unique identifier of the compute resource to deregister. For an
Anywhere fleet compute, use the registered compute name.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet the compute resource is currently
registered to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterCompute in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

