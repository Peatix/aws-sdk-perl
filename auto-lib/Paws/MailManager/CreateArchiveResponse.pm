
package Paws::MailManager::CreateArchiveResponse;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateArchiveResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveId => Str

The unique identifier for the newly created archive.


=head2 _request_id => Str


=cut

1;