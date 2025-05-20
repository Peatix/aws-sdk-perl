
package Paws::Bedrock::ListModelCustomizationJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelCustomizationJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-customization-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListModelCustomizationJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelCustomizationJobs - Arguments for method ListModelCustomizationJobs on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelCustomizationJobs on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListModelCustomizationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelCustomizationJobs.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListModelCustomizationJobsResponse =
      $bedrock->ListModelCustomizationJobs(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyJobName',              # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
      SortBy             => 'CreationTime',           # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
      StatusEquals       => 'InProgress',             # OPTIONAL
      );

    # Results:
    my $ModelCustomizationJobSummaries =
      $ListModelCustomizationJobsResponse->ModelCustomizationJobSummaries;
    my $NextToken = $ListModelCustomizationJobsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListModelCustomizationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListModelCustomizationJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Return customization jobs created after the specified time.



=head2 CreationTimeBefore => Str

Return customization jobs created before the specified time.



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NameContains => Str

Return customization jobs only if the job name contains these
characters.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 SortBy => Str

The field to sort by in the returned list of jobs.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The sort order of the results.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Return customization jobs with the specified status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelCustomizationJobs in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

