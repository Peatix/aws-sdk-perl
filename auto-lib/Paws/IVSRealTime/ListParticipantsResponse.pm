
package Paws::IVSRealTime::ListParticipantsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Participants => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::ParticipantSummary]', traits => ['NameInRequest'], request_name => 'participants', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListParticipantsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more participants than C<maxResults>, use C<nextToken> in
the request to get the next set.


=head2 B<REQUIRED> Participants => ArrayRef[L<Paws::IVSRealTime::ParticipantSummary>]

List of the matching participants (summary information only).


=head2 _request_id => Str


=cut

