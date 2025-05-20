
package Paws::Bedrock::ListInferenceProfilesResponse;
  use Moose;
  has InferenceProfileSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::InferenceProfileSummary]', traits => ['NameInRequest'], request_name => 'inferenceProfileSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListInferenceProfilesResponse

=head1 ATTRIBUTES


=head2 InferenceProfileSummaries => ArrayRef[L<Paws::Bedrock::InferenceProfileSummary>]

A list of information about each inference profile that you can use.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

