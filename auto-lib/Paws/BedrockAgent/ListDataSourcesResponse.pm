
package Paws::BedrockAgent::ListDataSourcesResponse;
  use Moose;
  has DataSourceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::DataSourceSummary]', traits => ['NameInRequest'], request_name => 'dataSourceSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceSummaries => ArrayRef[L<Paws::BedrockAgent::DataSourceSummary>]

A list of objects, each of which contains information about a data
source.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

