
package Paws::Wisdom::CreateAssistantResponse;
  use Moose;
  has Assistant => (is => 'ro', isa => 'Paws::Wisdom::AssistantData', traits => ['NameInRequest'], request_name => 'assistant');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::CreateAssistantResponse

=head1 ATTRIBUTES


=head2 Assistant => L<Paws::Wisdom::AssistantData>

Information about the assistant.


=head2 _request_id => Str


=cut

