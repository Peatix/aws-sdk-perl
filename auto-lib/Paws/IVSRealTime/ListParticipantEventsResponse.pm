
package Paws::IVSRealTime::ListParticipantEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::Event]', traits => ['NameInRequest'], request_name => 'events', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListParticipantEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::IVSRealTime::Event>]

List of the matching events.


=head2 NextToken => Str

If there are more events than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 _request_id => Str


=cut

