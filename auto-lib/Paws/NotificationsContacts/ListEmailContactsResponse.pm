
package Paws::NotificationsContacts::ListEmailContactsResponse;
  use Moose;
  has EmailContacts => (is => 'ro', isa => 'ArrayRef[Paws::NotificationsContacts::EmailContact]', traits => ['NameInRequest'], request_name => 'emailContacts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::ListEmailContactsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailContacts => ArrayRef[L<Paws::NotificationsContacts::EmailContact>]

A list of email contacts.


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 _request_id => Str


=cut

