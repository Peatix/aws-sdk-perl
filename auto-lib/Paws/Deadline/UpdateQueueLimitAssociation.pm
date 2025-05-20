
package Paws::Deadline::UpdateQueueLimitAssociation;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'limitId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueueLimitAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateQueueLimitAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateQueueLimitAssociation - Arguments for method UpdateQueueLimitAssociation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueueLimitAssociation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateQueueLimitAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueueLimitAssociation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateQueueLimitAssociationResponse =
      $deadline->UpdateQueueLimitAssociation(
      FarmId  => 'MyFarmId',
      LimitId => 'MyLimitId',
      QueueId => 'MyQueueId',
      Status  => 'ACTIVE',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateQueueLimitAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the associated queues
and limits.



=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit associated to the queue.



=head2 B<REQUIRED> QueueId => Str

The unique identifier of the queue associated to the limit.



=head2 B<REQUIRED> Status => Str

Sets the status of the limit. You can mark the limit active, or you can
stop usage of the limit and either complete existing tasks or cancel
any existing tasks immediately.

Valid values are: C<"ACTIVE">, C<"STOP_LIMIT_USAGE_AND_COMPLETE_TASKS">, C<"STOP_LIMIT_USAGE_AND_CANCEL_TASKS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueueLimitAssociation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

