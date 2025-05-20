
package Paws::Notifications::GetNotificationsAccessForOrganizationResponse;
  use Moose;
  has NotificationsAccessForOrganization => (is => 'ro', isa => 'Paws::Notifications::NotificationsAccessForOrganization', traits => ['NameInRequest'], request_name => 'notificationsAccessForOrganization', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetNotificationsAccessForOrganizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationsAccessForOrganization => L<Paws::Notifications::NotificationsAccessForOrganization>

The C<AccessStatus> of Service Trust Enablement for User Notifications
to Amazon Web Services Organizations.


=head2 _request_id => Str


=cut

