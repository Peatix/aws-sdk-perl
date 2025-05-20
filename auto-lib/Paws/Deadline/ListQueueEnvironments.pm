
package Paws::Deadline::ListQueueEnvironments;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueueEnvironments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListQueueEnvironmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListQueueEnvironments - Arguments for method ListQueueEnvironments on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueueEnvironments on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListQueueEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueueEnvironments.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListQueueEnvironmentsResponse = $deadline->ListQueueEnvironments(
      FarmId     => 'MyFarmId',
      QueueId    => 'MyQueueId',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Environments = $ListQueueEnvironmentsResponse->Environments;
    my $NextToken    = $ListQueueEnvironmentsResponse->NextToken;

    # Returns a L<Paws::Deadline::ListQueueEnvironmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListQueueEnvironments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID for the queue environment list.



=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the queue environment list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueueEnvironments in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

