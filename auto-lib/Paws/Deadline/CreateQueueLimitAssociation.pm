
package Paws::Deadline::CreateQueueLimitAssociation;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'limitId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueueLimitAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-limit-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateQueueLimitAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateQueueLimitAssociation - Arguments for method CreateQueueLimitAssociation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueueLimitAssociation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateQueueLimitAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueueLimitAssociation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateQueueLimitAssociationResponse =
      $deadline->CreateQueueLimitAssociation(
      FarmId  => 'MyFarmId',
      LimitId => 'MyLimitId',
      QueueId => 'MyQueueId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateQueueLimitAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the queue and limit to
associate.



=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit to associate with the queue.



=head2 B<REQUIRED> QueueId => Str

The unique identifier of the queue to associate with the limit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueueLimitAssociation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

