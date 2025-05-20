
package Paws::QConnect::CreateAIPromptVersionResponse;
  use Moose;
  has AiPrompt => (is => 'ro', isa => 'Paws::QConnect::AIPromptData', traits => ['NameInRequest'], request_name => 'aiPrompt');
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIPromptVersionResponse

=head1 ATTRIBUTES


=head2 AiPrompt => L<Paws::QConnect::AIPromptData>

The data of the AI Prompt version.


=head2 VersionNumber => Int

The version number of the AI Prompt version.


=head2 _request_id => Str


=cut

