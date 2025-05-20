
package Paws::MailManager::ListRelaysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Relays => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Relay]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListRelaysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 B<REQUIRED> Relays => ArrayRef[L<Paws::MailManager::Relay>]

The list of returned relays.


=head2 _request_id => Str


=cut

1;