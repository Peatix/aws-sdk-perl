
package Paws::Deadline::ListQueueLimitAssociations;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'limitId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'queueId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueueLimitAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queue-limit-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListQueueLimitAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListQueueLimitAssociations - Arguments for method ListQueueLimitAssociations on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueueLimitAssociations on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListQueueLimitAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueueLimitAssociations.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListQueueLimitAssociationsResponse =
      $deadline->ListQueueLimitAssociations(
      FarmId     => 'MyFarmId',
      LimitId    => 'MyLimitId',    # OPTIONAL
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyString',     # OPTIONAL
      QueueId    => 'MyQueueId',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListQueueLimitAssociationsResponse->NextToken;
    my $QueueLimitAssociations =
      $ListQueueLimitAssociationsResponse->QueueLimitAssociations;

    # Returns a L<Paws::Deadline::ListQueueLimitAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListQueueLimitAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the limits and
associations.



=head2 LimitId => Str

Specifies that the operation should return only the queue limit
associations for the specified limit. If you specify both the
C<queueId> and the C<limitId>, only the specified limit is returned if
it exists.



=head2 MaxResults => Int

The maximum number of associations to return in each page of results.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.



=head2 QueueId => Str

Specifies that the operation should return only the queue limit
associations for the specified queue. If you specify both the
C<queueId> and the C<limitId>, only the specified limit is returned if
it exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueueLimitAssociations in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

