
package Paws::Bedrock::ListImportedModelsResponse;
  use Moose;
  has ModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ImportedModelSummary]', traits => ['NameInRequest'], request_name => 'modelSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListImportedModelsResponse

=head1 ATTRIBUTES


=head2 ModelSummaries => ArrayRef[L<Paws::Bedrock::ImportedModelSummary>]

Model summaries.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

