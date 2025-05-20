
package Paws::NotificationsContacts::GetEmailContactResponse;
  use Moose;
  has EmailContact => (is => 'ro', isa => 'Paws::NotificationsContacts::EmailContact', traits => ['NameInRequest'], request_name => 'emailContact', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::GetEmailContactResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailContact => L<Paws::NotificationsContacts::EmailContact>

The email contact for the provided email address.


=head2 _request_id => Str


=cut

