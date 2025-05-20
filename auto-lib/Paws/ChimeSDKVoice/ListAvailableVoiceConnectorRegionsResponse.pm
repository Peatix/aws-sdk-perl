
package Paws::ChimeSDKVoice::ListAvailableVoiceConnectorRegionsResponse;
  use Moose;
  has VoiceConnectorRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListAvailableVoiceConnectorRegionsResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorRegions => ArrayRef[Str|Undef]

The list of AWS Regions.


=head2 _request_id => Str


=cut

