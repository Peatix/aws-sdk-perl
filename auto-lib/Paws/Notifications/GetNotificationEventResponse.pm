
package Paws::Notifications::GetNotificationEventResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Content => (is => 'ro', isa => 'Paws::Notifications::NotificationEvent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetNotificationEventResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource.


=head2 B<REQUIRED> Content => L<Paws::Notifications::NotificationEvent>

The content of the C<NotificationEvent>.


=head2 B<REQUIRED> CreationTime => Str

The creation time of the C<NotificationEvent>.


=head2 B<REQUIRED> NotificationConfigurationArn => Str

The ARN of the C<NotificationConfiguration>.


=head2 _request_id => Str


=cut

