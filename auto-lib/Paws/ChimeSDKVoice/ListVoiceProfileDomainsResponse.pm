
package Paws::ChimeSDKVoice::ListVoiceProfileDomainsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceProfileDomains => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceProfileDomainSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListVoiceProfileDomainsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 VoiceProfileDomains => ArrayRef[L<Paws::ChimeSDKVoice::VoiceProfileDomainSummary>]

The list of voice profile domains.


=head2 _request_id => Str


=cut

