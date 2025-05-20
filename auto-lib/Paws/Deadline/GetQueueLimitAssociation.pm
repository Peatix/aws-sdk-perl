
package Paws::Deadline::GetQueueLimitAssociation;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'limitId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueLimitAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetQueueLimitAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueueLimitAssociation - Arguments for method GetQueueLimitAssociation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueueLimitAssociation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetQueueLimitAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueueLimitAssociation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetQueueLimitAssociationResponse = $deadline->GetQueueLimitAssociation(
      FarmId  => 'MyFarmId',
      LimitId => 'MyLimitId',
      QueueId => 'MyQueueId',

    );

    # Results:
    my $CreatedAt = $GetQueueLimitAssociationResponse->CreatedAt;
    my $CreatedBy = $GetQueueLimitAssociationResponse->CreatedBy;
    my $LimitId   = $GetQueueLimitAssociationResponse->LimitId;
    my $QueueId   = $GetQueueLimitAssociationResponse->QueueId;
    my $Status    = $GetQueueLimitAssociationResponse->Status;
    my $UpdatedAt = $GetQueueLimitAssociationResponse->UpdatedAt;
    my $UpdatedBy = $GetQueueLimitAssociationResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetQueueLimitAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetQueueLimitAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the associated queue
and limit.



=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit associated with the queue.



=head2 B<REQUIRED> QueueId => Str

The unique identifier of the queue associated with the limit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueueLimitAssociation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

