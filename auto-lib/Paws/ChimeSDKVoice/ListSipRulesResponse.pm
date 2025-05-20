
package Paws::ChimeSDKVoice::ListSipRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SipRules => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::SipRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListSipRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 SipRules => ArrayRef[L<Paws::ChimeSDKVoice::SipRule>]

The list of SIP rules and details.


=head2 _request_id => Str


=cut

