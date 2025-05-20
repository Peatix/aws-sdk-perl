
package Paws::Bedrock::ListProvisionedModelThroughputsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProvisionedModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ProvisionedModelSummary]', traits => ['NameInRequest'], request_name => 'provisionedModelSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListProvisionedModelThroughputsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more results than the number you specified in the
C<maxResults> field, this value is returned. To see the next batch of
results, include this value in the C<nextToken> field in another list
request.


=head2 ProvisionedModelSummaries => ArrayRef[L<Paws::Bedrock::ProvisionedModelSummary>]

A list of summaries, one for each Provisioned Throughput in the
response.


=head2 _request_id => Str


=cut

