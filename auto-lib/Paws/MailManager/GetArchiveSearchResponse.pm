
package Paws::MailManager::GetArchiveSearchResponse;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::MailManager::ArchiveFilters');
  has FromTimestamp => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Paws::MailManager::SearchStatus');
  has ToTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveSearchResponse

=head1 ATTRIBUTES


=head2 ArchiveId => Str

The identifier of the archive the email search was performed in.


=head2 Filters => L<Paws::MailManager::ArchiveFilters>

The criteria used to filter emails included in the search.


=head2 FromTimestamp => Str

The start timestamp of the range the searched emails cover.


=head2 MaxResults => Int

The maximum number of search results to return.


=head2 Status => L<Paws::MailManager::SearchStatus>

The current status of the search job.


=head2 ToTimestamp => Str

The end timestamp of the range the searched emails cover.


=head2 _request_id => Str


=cut

1;