
package Paws::Bedrock::ListModelCopyJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has SourceAccountEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceAccountEquals');
  has SourceModelArnEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceModelArnEquals');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');
  has TargetModelNameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'outputModelNameContains');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelCopyJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-copy-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListModelCopyJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelCopyJobs - Arguments for method ListModelCopyJobs on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelCopyJobs on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListModelCopyJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelCopyJobs.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListModelCopyJobsResponse = $bedrock->ListModelCopyJobs(
      CreationTimeAfter       => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore      => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'MyPaginationToken',      # OPTIONAL
      SortBy                  => 'CreationTime',           # OPTIONAL
      SortOrder               => 'Ascending',              # OPTIONAL
      SourceAccountEquals     => 'MyAccountId',            # OPTIONAL
      SourceModelArnEquals    => 'MyModelArn',             # OPTIONAL
      StatusEquals            => 'InProgress',             # OPTIONAL
      TargetModelNameContains => 'MyCustomModelName',      # OPTIONAL
    );

    # Results:
    my $ModelCopyJobSummaries =
      $ListModelCopyJobsResponse->ModelCopyJobSummaries;
    my $NextToken = $ListModelCopyJobsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListModelCopyJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListModelCopyJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Filters for model copy jobs created after the specified time.



=head2 CreationTimeBefore => Str

Filters for model copy jobs created before the specified time.



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 SortBy => Str

The field to sort by in the returned list of model copy jobs.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

Specifies whether to sort the results in ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">

=head2 SourceAccountEquals => Str

Filters for model copy jobs in which the account that the source model
belongs to is equal to the value that you specify.



=head2 SourceModelArnEquals => Str

Filters for model copy jobs in which the Amazon Resource Name (ARN) of
the source model to is equal to the value that you specify.



=head2 StatusEquals => Str

Filters for model copy jobs whose status matches the value that you
specify.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">

=head2 TargetModelNameContains => Str

Filters for model copy jobs in which the name of the copied model
contains the string that you specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelCopyJobs in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

