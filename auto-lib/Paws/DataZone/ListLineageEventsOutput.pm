
package Paws::DataZone::ListLineageEventsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::LineageEventSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListLineageEventsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::LineageEventSummary>]

The results of the ListLineageEvents action.


=head2 NextToken => Str

When the number of lineage events is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of lineage events, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListLineageEvents to list the
next set of lineage events.


=head2 _request_id => Str


=cut

