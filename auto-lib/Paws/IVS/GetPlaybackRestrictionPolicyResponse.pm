
package Paws::IVS::GetPlaybackRestrictionPolicyResponse;
  use Moose;
  has PlaybackRestrictionPolicy => (is => 'ro', isa => 'Paws::IVS::PlaybackRestrictionPolicy', traits => ['NameInRequest'], request_name => 'playbackRestrictionPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetPlaybackRestrictionPolicyResponse

=head1 ATTRIBUTES


=head2 PlaybackRestrictionPolicy => L<Paws::IVS::PlaybackRestrictionPolicy>




=head2 _request_id => Str


=cut

