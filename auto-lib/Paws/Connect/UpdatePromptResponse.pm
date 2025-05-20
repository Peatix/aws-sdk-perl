
package Paws::Connect::UpdatePromptResponse;
  use Moose;
  has PromptARN => (is => 'ro', isa => 'Str');
  has PromptId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdatePromptResponse

=head1 ATTRIBUTES


=head2 PromptARN => Str

The Amazon Resource Name (ARN) of the prompt.


=head2 PromptId => Str

A unique identifier for the prompt.


=head2 _request_id => Str


=cut

