
package Paws::Athena::CreatePresignedNotebookUrlResponse;
  use Moose;
  has AuthToken => (is => 'ro', isa => 'Str', required => 1);
  has AuthTokenExpirationTime => (is => 'ro', isa => 'Int', required => 1);
  has NotebookUrl => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreatePresignedNotebookUrlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthToken => Str

The authentication token for the notebook.


=head2 B<REQUIRED> AuthTokenExpirationTime => Int

The UTC epoch time when the authentication token expires.


=head2 B<REQUIRED> NotebookUrl => Str

The URL of the notebook. The URL includes the authentication token and
notebook file name and points directly to the opened notebook.


=head2 _request_id => Str


=cut

1;