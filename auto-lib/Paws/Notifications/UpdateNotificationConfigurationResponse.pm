
package Paws::Notifications::UpdateNotificationConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::UpdateNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN used to update the C<NotificationConfiguration>.


=head2 _request_id => Str


=cut

