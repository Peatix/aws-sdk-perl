
package Paws::SSM::ListNodesSummaryResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summary => (is => 'ro', isa => 'ArrayRef[Paws::SSM::NodeSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListNodesSummaryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Summary => ArrayRef[L<Paws::SSM::NodeSummary>]

A collection of objects reporting information about your managed nodes,
such as the count of nodes by operating system.


=head2 _request_id => Str


=cut

1;