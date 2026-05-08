
package Paws::OpenSearch::DescribeInstanceTypeLimitsResponse;
  use Moose;
  has LimitsByRole => (is => 'ro', isa => 'Paws::OpenSearch::LimitsByRole');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeInstanceTypeLimitsResponse

=head1 ATTRIBUTES


=head2 LimitsByRole => L<Paws::OpenSearch::LimitsByRole>

Map that contains all applicable instance type limits.C<data> refers to
data nodes.C<master> refers to dedicated master nodes.


=head2 _request_id => Str


=cut

