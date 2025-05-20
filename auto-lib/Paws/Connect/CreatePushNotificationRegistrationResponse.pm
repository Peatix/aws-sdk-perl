
package Paws::Connect::CreatePushNotificationRegistrationResponse;
  use Moose;
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreatePushNotificationRegistrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationId => Str

The identifier for the registration.


=head2 _request_id => Str


=cut

