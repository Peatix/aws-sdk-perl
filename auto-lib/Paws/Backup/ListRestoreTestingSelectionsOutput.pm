
package Paws::Backup::ListRestoreTestingSelectionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RestoreTestingSelections => (is => 'ro', isa => 'ArrayRef[Paws::Backup::RestoreTestingSelectionForList]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRestoreTestingSelectionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the nexttoken.


=head2 B<REQUIRED> RestoreTestingSelections => ArrayRef[L<Paws::Backup::RestoreTestingSelectionForList>]

The returned restore testing selections associated with the restore
testing plan.


=head2 _request_id => Str


=cut

