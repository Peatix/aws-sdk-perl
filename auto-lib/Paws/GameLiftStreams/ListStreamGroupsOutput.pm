
package Paws::GameLiftStreams::ListStreamGroupsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::StreamGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListStreamGroupsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::GameLiftStreams::StreamGroupSummary>]

A collection of Amazon GameLift Streams stream groups that are
associated with the Amazon Web Services account in use. Each item
includes stream group metadata and status, but doesn't include capacity
information.


=head2 NextToken => Str

A token that marks the start of the next sequential page of results. If
an operation doesn't return a token, you've reached the end of the
list.


=head2 _request_id => Str


=cut

