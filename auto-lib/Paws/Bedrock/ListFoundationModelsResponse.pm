
package Paws::Bedrock::ListFoundationModelsResponse;
  use Moose;
  has ModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::FoundationModelSummary]', traits => ['NameInRequest'], request_name => 'modelSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListFoundationModelsResponse

=head1 ATTRIBUTES


=head2 ModelSummaries => ArrayRef[L<Paws::Bedrock::FoundationModelSummary>]

A list of Amazon Bedrock foundation models.


=head2 _request_id => Str


=cut

