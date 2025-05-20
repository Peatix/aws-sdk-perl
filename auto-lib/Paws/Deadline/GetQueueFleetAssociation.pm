
package Paws::Deadline::GetQueueFleetAssociation;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueFleetAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetQueueFleetAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueueFleetAssociation - Arguments for method GetQueueFleetAssociation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueueFleetAssociation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetQueueFleetAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueueFleetAssociation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetQueueFleetAssociationResponse = $deadline->GetQueueFleetAssociation(
      FarmId  => 'MyFarmId',
      FleetId => 'MyFleetId',
      QueueId => 'MyQueueId',

    );

    # Results:
    my $CreatedAt = $GetQueueFleetAssociationResponse->CreatedAt;
    my $CreatedBy = $GetQueueFleetAssociationResponse->CreatedBy;
    my $FleetId   = $GetQueueFleetAssociationResponse->FleetId;
    my $QueueId   = $GetQueueFleetAssociationResponse->QueueId;
    my $Status    = $GetQueueFleetAssociationResponse->Status;
    my $UpdatedAt = $GetQueueFleetAssociationResponse->UpdatedAt;
    my $UpdatedBy = $GetQueueFleetAssociationResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetQueueFleetAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetQueueFleetAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm that contains the queue-fleet association.



=head2 B<REQUIRED> FleetId => Str

The fleet ID for the queue-fleet association.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the queue-fleet association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueueFleetAssociation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

