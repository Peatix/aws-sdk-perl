
package Paws::Deadline::GetFleet;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetFleet - Arguments for method GetFleet on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFleet on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFleet.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetFleetResponse = $deadline->GetFleet(
      FarmId  => 'MyFarmId',
      FleetId => 'MyFleetId',

    );

    # Results:
    my $AutoScalingStatus = $GetFleetResponse->AutoScalingStatus;
    my $Capabilities      = $GetFleetResponse->Capabilities;
    my $Configuration     = $GetFleetResponse->Configuration;
    my $CreatedAt         = $GetFleetResponse->CreatedAt;
    my $CreatedBy         = $GetFleetResponse->CreatedBy;
    my $Description       = $GetFleetResponse->Description;
    my $DisplayName       = $GetFleetResponse->DisplayName;
    my $FarmId            = $GetFleetResponse->FarmId;
    my $FleetId           = $GetFleetResponse->FleetId;
    my $HostConfiguration = $GetFleetResponse->HostConfiguration;
    my $MaxWorkerCount    = $GetFleetResponse->MaxWorkerCount;
    my $MinWorkerCount    = $GetFleetResponse->MinWorkerCount;
    my $RoleArn           = $GetFleetResponse->RoleArn;
    my $Status            = $GetFleetResponse->Status;
    my $TargetWorkerCount = $GetFleetResponse->TargetWorkerCount;
    my $UpdatedAt         = $GetFleetResponse->UpdatedAt;
    my $UpdatedBy         = $GetFleetResponse->UpdatedBy;
    my $WorkerCount       = $GetFleetResponse->WorkerCount;

    # Returns a L<Paws::Deadline::GetFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm in the fleet.



=head2 B<REQUIRED> FleetId => Str

The fleet ID of the fleet to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFleet in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

