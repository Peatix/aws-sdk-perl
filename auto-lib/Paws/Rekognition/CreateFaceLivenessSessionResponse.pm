
package Paws::Rekognition::CreateFaceLivenessSessionResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateFaceLivenessSessionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

A unique 128-bit UUID identifying a Face Liveness session. A new
sessionID must be used for every Face Liveness check. If a given
sessionID is used for subsequent Face Liveness checks, the checks will
fail. Additionally, a SessionId expires 3 minutes after it's sent,
making all Liveness data associated with the session (e.g., sessionID,
reference image, audit images, etc.) unavailable.


=head2 _request_id => Str


=cut

1;