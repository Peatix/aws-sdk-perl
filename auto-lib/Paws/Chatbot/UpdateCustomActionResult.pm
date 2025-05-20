
package Paws::Chatbot::UpdateCustomActionResult;
  use Moose;
  has CustomActionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateCustomActionResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomActionArn => Str

The fully defined ARN of the custom action.


=head2 _request_id => Str


=cut

