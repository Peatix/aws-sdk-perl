
package Paws::BedrockDataAutomationRuntime::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomationRuntime::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Tag>]




=head2 _request_id => Str


=cut

1;