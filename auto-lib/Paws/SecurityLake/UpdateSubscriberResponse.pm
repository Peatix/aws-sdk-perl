
package Paws::SecurityLake::UpdateSubscriberResponse;
  use Moose;
  has Subscriber => (is => 'ro', isa => 'Paws::SecurityLake::SubscriberResource', traits => ['NameInRequest'], request_name => 'subscriber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::UpdateSubscriberResponse

=head1 ATTRIBUTES


=head2 Subscriber => L<Paws::SecurityLake::SubscriberResource>

The updated subscriber information.


=head2 _request_id => Str


=cut

