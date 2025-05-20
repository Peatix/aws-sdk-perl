
package Paws::Notifications::CreateNotificationConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::CreateNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the C<NotificationConfiguration>.


=head2 B<REQUIRED> Status => Str

The current status of this C<NotificationConfiguration>.

Valid values are: C<"ACTIVE">, C<"PARTIALLY_ACTIVE">, C<"INACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

