
package Paws::BedrockAgent::ListIngestionJobs;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::IngestionJobFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::BedrockAgent::IngestionJobSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIngestionJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ListIngestionJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListIngestionJobs - Arguments for method ListIngestionJobs on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIngestionJobs on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ListIngestionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIngestionJobs.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ListIngestionJobsResponse = $bedrock -agent->ListIngestionJobs(
      DataSourceId    => 'MyId',
      KnowledgeBaseId => 'MyId',
      Filters         => [
        {
          Attribute => 'STATUS',    # values: STATUS
          Operator  => 'EQ',        # values: EQ
          Values    => [
            'MyIngestionJobFilterValue', ...    # max: 100
          ],    # max: 10

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'STATUS',        # values: STATUS, STARTED_AT
        Order     => 'ASCENDING',     # values: ASCENDING, DESCENDING

      },    # OPTIONAL
    );

    # Results:
    my $IngestionJobSummaries =
      $ListIngestionJobsResponse->IngestionJobSummaries;
    my $NextToken = $ListIngestionJobsResponse->NextToken;

    # Returns a L<Paws::BedrockAgent::ListIngestionJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ListIngestionJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source for the list of data ingestion
jobs.



=head2 Filters => ArrayRef[L<Paws::BedrockAgent::IngestionJobFilter>]

Contains information about the filters for filtering the data.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base for the list of data
ingestion jobs.



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



=head2 SortBy => L<Paws::BedrockAgent::IngestionJobSortBy>

Contains details about how to sort the data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIngestionJobs in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

