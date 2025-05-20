
package Paws::Detective::BatchGetMembershipDatasourcesResponse;
  use Moose;
  has MembershipDatasources => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MembershipDatasources]');
  has UnprocessedGraphs => (is => 'ro', isa => 'ArrayRef[Paws::Detective::UnprocessedGraph]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::BatchGetMembershipDatasourcesResponse

=head1 ATTRIBUTES


=head2 MembershipDatasources => ArrayRef[L<Paws::Detective::MembershipDatasources>]

Details on the data source package history for an member of the
behavior graph.


=head2 UnprocessedGraphs => ArrayRef[L<Paws::Detective::UnprocessedGraph>]

Graphs that data source package information could not be retrieved for.


=head2 _request_id => Str


=cut

