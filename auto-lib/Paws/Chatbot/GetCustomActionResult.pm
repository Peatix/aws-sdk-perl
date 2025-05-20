
package Paws::Chatbot::GetCustomActionResult;
  use Moose;
  has CustomAction => (is => 'ro', isa => 'Paws::Chatbot::CustomAction');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::GetCustomActionResult

=head1 ATTRIBUTES


=head2 CustomAction => L<Paws::Chatbot::CustomAction>

Returns the custom action.


=head2 _request_id => Str


=cut

