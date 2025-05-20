
package Paws::Transfer::TestConnectionResponse;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str');
  has SftpConnectionDetails => (is => 'ro', isa => 'Paws::Transfer::SftpConnectorConnectionDetails');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::TestConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectorId => Str

Returns the identifier of the connector object that you are testing.


=head2 SftpConnectionDetails => L<Paws::Transfer::SftpConnectorConnectionDetails>

Structure that contains the SFTP connector host key.


=head2 Status => Str

Returns C<OK> for successful test, or C<ERROR> if the test fails.


=head2 StatusMessage => Str

Returns C<Connection succeeded> if the test is successful. Or, returns
a descriptive error message if the test fails. The following list
provides troubleshooting details, depending on the error message that
you receive.

=over

=item *

Verify that your secret name aligns with the one in Transfer Role
permissions.

=item *

Verify the server URL in the connector configuration , and verify that
the login credentials work successfully outside of the connector.

=item *

Verify that the secret exists and is formatted correctly.

=item *

Verify that the trusted host key in the connector configuration matches
the C<ssh-keyscan> output.

=back



=head2 _request_id => Str


=cut

1;