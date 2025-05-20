
package Paws::Backup::ListRestoreTestingPlansOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RestoreTestingPlans => (is => 'ro', isa => 'ArrayRef[Paws::Backup::RestoreTestingPlanForList]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRestoreTestingPlansOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the nexttoken.


=head2 B<REQUIRED> RestoreTestingPlans => ArrayRef[L<Paws::Backup::RestoreTestingPlanForList>]

This is a returned list of restore testing plans.


=head2 _request_id => Str


=cut

