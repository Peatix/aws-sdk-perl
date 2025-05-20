
package Paws::QConnect::GetAssistantResponse;
  use Moose;
  has Assistant => (is => 'ro', isa => 'Paws::QConnect::AssistantData', traits => ['NameInRequest'], request_name => 'assistant');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetAssistantResponse

=head1 ATTRIBUTES


=head2 Assistant => L<Paws::QConnect::AssistantData>

Information about the assistant.


=head2 _request_id => Str


=cut

