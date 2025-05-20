
package Paws::MailManager::GetArchiveSearchResultsResponse;
  use Moose;
  has Rows => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Row]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveSearchResultsResponse

=head1 ATTRIBUTES


=head2 Rows => ArrayRef[L<Paws::MailManager::Row>]

The list of email result objects matching the search criteria.


=head2 _request_id => Str


=cut

1;