
package Paws::Chatbot::GetAccountPreferencesResult;
  use Moose;
  has AccountPreferences => (is => 'ro', isa => 'Paws::Chatbot::AccountPreferences');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::GetAccountPreferencesResult

=head1 ATTRIBUTES


=head2 AccountPreferences => L<Paws::Chatbot::AccountPreferences>

The preferences related to AWS Chatbot usage in the calling AWS
account.


=head2 _request_id => Str


=cut

