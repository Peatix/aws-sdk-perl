
package Paws::MailManager::StartArchiveSearchResponse;
  use Moose;
  has SearchId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::StartArchiveSearchResponse

=head1 ATTRIBUTES


=head2 SearchId => Str

The unique identifier for the initiated search job.


=head2 _request_id => Str


=cut

1;