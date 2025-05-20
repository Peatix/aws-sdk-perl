
package Paws::MailManager::ListArchiveExportsResponse;
  use Moose;
  has Exports => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::ExportSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListArchiveExportsResponse

=head1 ATTRIBUTES


=head2 Exports => ArrayRef[L<Paws::MailManager::ExportSummary>]

The list of export job identifiers and statuses.


=head2 NextToken => Str

If present, use to retrieve the next page of results.


=head2 _request_id => Str


=cut

1;