
package Paws::MailManager::ListArchiveSearchesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Searches => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::SearchSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListArchiveSearchesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, use to retrieve the next page of results.


=head2 Searches => ArrayRef[L<Paws::MailManager::SearchSummary>]

The list of search job identifiers and statuses.


=head2 _request_id => Str


=cut

1;