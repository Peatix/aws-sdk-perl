
package Paws::SSMGuiConnect::GetConnectionRecordingPreferencesResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectionRecordingPreferences => (is => 'ro', isa => 'Paws::SSMGuiConnect::ConnectionRecordingPreferences');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMGuiConnect::GetConnectionRecordingPreferencesResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

Service-provided idempotency token.


=head2 ConnectionRecordingPreferences => L<Paws::SSMGuiConnect::ConnectionRecordingPreferences>

The set of preferences used for recording RDP connections in the
requesting Amazon Web Services account and Amazon Web Services Region.
This includes details such as which S3 bucket recordings are stored in.


=head2 _request_id => Str


=cut

