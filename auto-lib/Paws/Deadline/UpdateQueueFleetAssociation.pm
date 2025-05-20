
package Paws::Deadline::UpdateQueueFleetAssociation;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueueFleetAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateQueueFleetAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateQueueFleetAssociation - Arguments for method UpdateQueueFleetAssociation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueueFleetAssociation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateQueueFleetAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueueFleetAssociation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateQueueFleetAssociationResponse =
      $deadline->UpdateQueueFleetAssociation(
      FarmId  => 'MyFarmId',
      FleetId => 'MyFleetId',
      QueueId => 'MyQueueId',
      Status  => 'ACTIVE',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateQueueFleetAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID to update.



=head2 B<REQUIRED> FleetId => Str

The fleet ID to update.



=head2 B<REQUIRED> QueueId => Str

The queue ID to update.



=head2 B<REQUIRED> Status => Str

The status to update.

Valid values are: C<"ACTIVE">, C<"STOP_SCHEDULING_AND_COMPLETE_TASKS">, C<"STOP_SCHEDULING_AND_CANCEL_TASKS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueueFleetAssociation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

