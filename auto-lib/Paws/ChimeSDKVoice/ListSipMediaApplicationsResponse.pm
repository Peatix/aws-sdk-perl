
package Paws::ChimeSDKVoice::ListSipMediaApplicationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SipMediaApplications => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::SipMediaApplication]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListSipMediaApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 SipMediaApplications => ArrayRef[L<Paws::ChimeSDKVoice::SipMediaApplication>]

The list of SIP media applications and application details.


=head2 _request_id => Str


=cut

