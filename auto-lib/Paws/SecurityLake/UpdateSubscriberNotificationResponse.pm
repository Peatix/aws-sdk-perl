
package Paws::SecurityLake::UpdateSubscriberNotificationResponse;
  use Moose;
  has SubscriberEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriberEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::UpdateSubscriberNotificationResponse

=head1 ATTRIBUTES


=head2 SubscriberEndpoint => Str

The subscriber endpoint to which exception messages are posted.


=head2 _request_id => Str


=cut

