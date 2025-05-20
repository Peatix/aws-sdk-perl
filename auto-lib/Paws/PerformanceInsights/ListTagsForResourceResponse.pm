
package Paws::PerformanceInsights::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::PerformanceInsights::Tag>]

The metadata assigned to an Amazon RDS resource consisting of a
key-value pair.


=head2 _request_id => Str


=cut

1;