
package Paws::DataZone::ListLineageNodeHistoryOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::LineageNodeSummary]', traits => ['NameInRequest'], request_name => 'nodes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListLineageNodeHistoryOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

When the number of history items is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of items, the response includes
a pagination token named NextToken. You can specify this NextToken
value in a subsequent call to ListLineageNodeHistory to list the next
set of items.


=head2 Nodes => ArrayRef[L<Paws::DataZone::LineageNodeSummary>]

The nodes returned by the ListLineageNodeHistory action.


=head2 _request_id => Str


=cut

