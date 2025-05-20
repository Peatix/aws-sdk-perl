
package Paws::IVSRealTime::ListStageSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StageSessions => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::StageSessionSummary]', traits => ['NameInRequest'], request_name => 'stageSessions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListStageSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more stage sessions than C<maxResults>, use C<nextToken>
in the request to get the next set.


=head2 B<REQUIRED> StageSessions => ArrayRef[L<Paws::IVSRealTime::StageSessionSummary>]

List of matching stage sessions.


=head2 _request_id => Str


=cut

