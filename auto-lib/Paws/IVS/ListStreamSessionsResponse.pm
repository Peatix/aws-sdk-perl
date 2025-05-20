
package Paws::IVS::ListStreamSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StreamSessions => (is => 'ro', isa => 'ArrayRef[Paws::IVS::StreamSessionSummary]', traits => ['NameInRequest'], request_name => 'streamSessions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListStreamSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more streams than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> StreamSessions => ArrayRef[L<Paws::IVS::StreamSessionSummary>]

List of stream sessions.


=head2 _request_id => Str


=cut

