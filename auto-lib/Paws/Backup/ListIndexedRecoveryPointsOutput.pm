
package Paws::Backup::ListIndexedRecoveryPointsOutput;
  use Moose;
  has IndexedRecoveryPoints => (is => 'ro', isa => 'ArrayRef[Paws::Backup::IndexedRecoveryPoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListIndexedRecoveryPointsOutput

=head1 ATTRIBUTES


=head2 IndexedRecoveryPoints => ArrayRef[L<Paws::Backup::IndexedRecoveryPoint>]

This is a list of recovery points that have an associated index,
belonging to the specified account.


=head2 NextToken => Str

The next item following a partial list of returned recovery points.

For example, if a request is made to return C<MaxResults> number of
indexed recovery points, C<NextToken> allows you to return more items
in your list starting at the location pointed to by the next token.


=head2 _request_id => Str


=cut

