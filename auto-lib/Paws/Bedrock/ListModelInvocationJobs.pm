
package Paws::Bedrock::ListModelInvocationJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');
  has SubmitTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'submitTimeAfter');
  has SubmitTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'submitTimeBefore');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelInvocationJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-invocation-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListModelInvocationJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelInvocationJobs - Arguments for method ListModelInvocationJobs on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelInvocationJobs on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListModelInvocationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelInvocationJobs.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListModelInvocationJobsResponse = $bedrock->ListModelInvocationJobs(
      MaxResults       => 1,                             # OPTIONAL
      NameContains     => 'MyModelInvocationJobName',    # OPTIONAL
      NextToken        => 'MyPaginationToken',           # OPTIONAL
      SortBy           => 'CreationTime',                # OPTIONAL
      SortOrder        => 'Ascending',                   # OPTIONAL
      StatusEquals     => 'Submitted',                   # OPTIONAL
      SubmitTimeAfter  => '1970-01-01T01:00:00',         # OPTIONAL
      SubmitTimeBefore => '1970-01-01T01:00:00',         # OPTIONAL
    );

    # Results:
    my $InvocationJobSummaries =
      $ListModelInvocationJobsResponse->InvocationJobSummaries;
    my $NextToken = $ListModelInvocationJobsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListModelInvocationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListModelInvocationJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return. If there are more results than
the number that you specify, a C<nextToken> value is returned. Use the
C<nextToken> in a request to return the next batch of results.



=head2 NameContains => Str

Specify a string to filter for batch inference jobs whose names contain
the string.



=head2 NextToken => Str

If there were more results than the value you specified in the
C<maxResults> field in a previous C<ListModelInvocationJobs> request,
the response would have returned a C<nextToken> value. To see the next
batch of results, send the C<nextToken> value in another request.



=head2 SortBy => Str

An attribute by which to sort the results.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

Specifies whether to sort the results by ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Specify a status to filter for batch inference jobs whose statuses
match the string you specify.

The following statuses are possible:

=over

=item *

Submitted E<ndash> This job has been submitted to a queue for
validation.

=item *

Validating E<ndash> This job is being validated for the requirements
described in Format and upload your batch inference data
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html).
The criteria include the following:

=over

=item *

Your IAM service role has access to the Amazon S3 buckets containing
your files.

=item *

Your files are .jsonl files and each individual record is a JSON object
in the correct format. Note that validation doesn't check if the
C<modelInput> value matches the request body for the model.

=item *

Your files fulfill the requirements for file size and number of
records. For more information, see Quotas for Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html).

=back

=item *

Scheduled E<ndash> This job has been validated and is now in a queue.
The job will automatically start when it reaches its turn.

=item *

Expired E<ndash> This job timed out because it was scheduled but didn't
begin before the set timeout duration. Submit a new job request.

=item *

InProgress E<ndash> This job has begun. You can start viewing the
results in the output S3 location.

=item *

Completed E<ndash> This job has successfully completed. View the output
files in the output S3 location.

=item *

PartiallyCompleted E<ndash> This job has partially completed. Not all
of your records could be processed in time. View the output files in
the output S3 location.

=item *

Failed E<ndash> This job has failed. Check the failure message for any
further details. For further assistance, reach out to the Amazon Web
ServicesSupport Center (https://console.aws.amazon.com/support/home/).

=item *

Stopped E<ndash> This job was stopped by a user.

=item *

Stopping E<ndash> This job is being stopped by a user.

=back


Valid values are: C<"Submitted">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">, C<"PartiallyCompleted">, C<"Expired">, C<"Validating">, C<"Scheduled">

=head2 SubmitTimeAfter => Str

Specify a time to filter for batch inference jobs that were submitted
after the time you specify.



=head2 SubmitTimeBefore => Str

Specify a time to filter for batch inference jobs that were submitted
before the time you specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelInvocationJobs in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

