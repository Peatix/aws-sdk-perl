
package Paws::FinspaceData::ListDataViewsResponse;
  use Moose;
  has DataViews => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::DataViewSummary]', traits => ['NameInRequest'], request_name => 'dataViews');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListDataViewsResponse

=head1 ATTRIBUTES


=head2 DataViews => ArrayRef[L<Paws::FinspaceData::DataViewSummary>]

A list of Dataviews.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

