
package Paws::SecurityHub::ListFindingAggregatorsResponse;
  use Moose;
  has FindingAggregators => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::FindingAggregator]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListFindingAggregatorsResponse

=head1 ATTRIBUTES


=head2 FindingAggregators => ArrayRef[L<Paws::SecurityHub::FindingAggregator>]

The list of finding aggregators. This operation currently only returns
a single result.


=head2 NextToken => Str

If there are more results, this is the token to provide in the next
call to C<ListFindingAggregators>.

This operation currently only returns a single result.


=head2 _request_id => Str


=cut

