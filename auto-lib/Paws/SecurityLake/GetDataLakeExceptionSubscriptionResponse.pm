
package Paws::SecurityLake::GetDataLakeExceptionSubscriptionResponse;
  use Moose;
  has ExceptionTimeToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'exceptionTimeToLive');
  has NotificationEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationEndpoint');
  has SubscriptionProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionProtocol');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::GetDataLakeExceptionSubscriptionResponse

=head1 ATTRIBUTES


=head2 ExceptionTimeToLive => Int

The expiration period and time-to-live (TTL). It is the duration of
time until which the exception message remains.


=head2 NotificationEndpoint => Str

The Amazon Web Services account where you receive exception
notifications.


=head2 SubscriptionProtocol => Str

The subscription protocol to which exception notifications are posted.


=head2 _request_id => Str


=cut

