
package Paws::Bedrock::ListEvaluationJobs;
  use Moose;
  has ApplicationTypeEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'applicationTypeEquals');
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEvaluationJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListEvaluationJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListEvaluationJobs - Arguments for method ListEvaluationJobs on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEvaluationJobs on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListEvaluationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEvaluationJobs.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListEvaluationJobsResponse = $bedrock->ListEvaluationJobs(
      ApplicationTypeEquals => 'ModelEvaluation',        # OPTIONAL
      CreationTimeAfter     => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore    => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults            => 1,                        # OPTIONAL
      NameContains          => 'MyEvaluationJobName',    # OPTIONAL
      NextToken             => 'MyPaginationToken',      # OPTIONAL
      SortBy                => 'CreationTime',           # OPTIONAL
      SortOrder             => 'Ascending',              # OPTIONAL
      StatusEquals          => 'InProgress',             # OPTIONAL
    );

    # Results:
    my $JobSummaries = $ListEvaluationJobsResponse->JobSummaries;
    my $NextToken    = $ListEvaluationJobsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListEvaluationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListEvaluationJobs>

=head1 ATTRIBUTES


=head2 ApplicationTypeEquals => Str

A filter to only list evaluation jobs that are either model evaluations
or knowledge base evaluations.

Valid values are: C<"ModelEvaluation">, C<"RagEvaluation">

=head2 CreationTimeAfter => Str

A filter to only list evaluation jobs created after a specified time.



=head2 CreationTimeBefore => Str

A filter to only list evaluation jobs created before a specified time.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NameContains => Str

A filter to only list evaluation jobs that contain a specified string
in the job name.



=head2 NextToken => Str

Continuation token from the previous response, for Amazon Bedrock to
list the next set of results.



=head2 SortBy => Str

Specifies a creation time to sort the list of evaluation jobs by when
they were created.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

Specifies whether to sort the list of evaluation jobs by either
ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter to only list evaluation jobs that are of a certain status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">, C<"Deleting">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEvaluationJobs in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

