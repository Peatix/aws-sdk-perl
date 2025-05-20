
package Paws::KinesisVideo::DescribeNotificationConfigurationOutput;
  use Moose;
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::NotificationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeNotificationConfigurationOutput

=head1 ATTRIBUTES


=head2 NotificationConfiguration => L<Paws::KinesisVideo::NotificationConfiguration>

The structure that contains the information required for notifications.
If the structure is null, the configuration will be deleted from the
stream.


=head2 _request_id => Str


=cut

