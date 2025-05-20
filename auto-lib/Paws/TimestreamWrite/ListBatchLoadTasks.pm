
package Paws::TimestreamWrite::ListBatchLoadTasks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBatchLoadTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::ListBatchLoadTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListBatchLoadTasks - Arguments for method ListBatchLoadTasks on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBatchLoadTasks on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method ListBatchLoadTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBatchLoadTasks.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $ListBatchLoadTasksResponse = $ingest . timestream->ListBatchLoadTasks(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      TaskStatus => 'CREATED',     # OPTIONAL
    );

    # Results:
    my $BatchLoadTasks = $ListBatchLoadTasksResponse->BatchLoadTasks;
    my $NextToken      = $ListBatchLoadTasksResponse->NextToken;

    # Returns a L<Paws::TimestreamWrite::ListBatchLoadTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/ListBatchLoadTasks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of items to return in the output. If the total number
of items available is more than the value specified, a NextToken is
provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.



=head2 TaskStatus => Str

Status of the batch load task.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"FAILED">, C<"SUCCEEDED">, C<"PROGRESS_STOPPED">, C<"PENDING_RESUME">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBatchLoadTasks in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

