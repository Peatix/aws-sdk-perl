
package Paws::SSMGuiConnect::DeleteConnectionRecordingPreferencesResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMGuiConnect::DeleteConnectionRecordingPreferencesResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

Service-provided idempotency token.


=head2 _request_id => Str


=cut

