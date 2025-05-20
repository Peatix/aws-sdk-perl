
package Paws::GameLift::GetComputeAccess;
  use Moose;
  has ComputeName => (is => 'ro', isa => 'Str', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComputeAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::GetComputeAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetComputeAccess - Arguments for method GetComputeAccess on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComputeAccess on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method GetComputeAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComputeAccess.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $GetComputeAccessOutput = $gamelift->GetComputeAccess(
      ComputeName => 'MyComputeNameOrArn',
      FleetId     => 'MyFleetIdOrArn',

    );

    # Results:
    my $ComputeArn           = $GetComputeAccessOutput->ComputeArn;
    my $ComputeName          = $GetComputeAccessOutput->ComputeName;
    my $ContainerIdentifiers = $GetComputeAccessOutput->ContainerIdentifiers;
    my $Credentials          = $GetComputeAccessOutput->Credentials;
    my $FleetArn             = $GetComputeAccessOutput->FleetArn;
    my $FleetId              = $GetComputeAccessOutput->FleetId;
    my $Target               = $GetComputeAccessOutput->Target;

    # Returns a L<Paws::GameLift::GetComputeAccessOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/GetComputeAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeName => Str

A unique identifier for the compute resource that you want to connect
to. For an EC2 fleet, use an instance ID. For a managed container
fleet, use a compute name. You can retrieve a fleet's compute names by
calling ListCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html).



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet that holds the compute resource that
you want to connect to. You can use either the fleet ID or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComputeAccess in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

