
package Paws::MailManager::ListArchivesResponse;
  use Moose;
  has Archives => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Archive]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListArchivesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Archives => ArrayRef[L<Paws::MailManager::Archive>]

The list of archive details.


=head2 NextToken => Str

If present, use to retrieve the next page of results.


=head2 _request_id => Str


=cut

1;