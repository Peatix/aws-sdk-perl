
package Paws::GameLiftStreams::ListStreamSessionsByAccountOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::StreamSessionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListStreamSessionsByAccountOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::GameLiftStreams::StreamSessionSummary>]

A collection of Amazon GameLift Streams stream sessions that are
associated with a stream group and returned in response to a list
request. Each item includes stream session metadata and status.


=head2 NextToken => Str

A token that marks the start of the next sequential page of results. If
an operation doesn't return a token, you've reached the end of the
list.


=head2 _request_id => Str


=cut

