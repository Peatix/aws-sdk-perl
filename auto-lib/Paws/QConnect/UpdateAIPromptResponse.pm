
package Paws::QConnect::UpdateAIPromptResponse;
  use Moose;
  has AiPrompt => (is => 'ro', isa => 'Paws::QConnect::AIPromptData', traits => ['NameInRequest'], request_name => 'aiPrompt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAIPromptResponse

=head1 ATTRIBUTES


=head2 AiPrompt => L<Paws::QConnect::AIPromptData>

The data of the updated Amazon Q in Connect AI Prompt.


=head2 _request_id => Str


=cut

