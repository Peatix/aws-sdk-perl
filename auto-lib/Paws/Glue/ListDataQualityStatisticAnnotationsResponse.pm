
package Paws::Glue::ListDataQualityStatisticAnnotationsResponse;
  use Moose;
  has Annotations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::StatisticAnnotation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityStatisticAnnotationsResponse

=head1 ATTRIBUTES


=head2 Annotations => ArrayRef[L<Paws::Glue::StatisticAnnotation>]

A list of C<StatisticAnnotation> applied to the Statistic


=head2 NextToken => Str

A pagination token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;