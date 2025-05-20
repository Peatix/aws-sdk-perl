
package Paws::Connect::DescribeTrafficDistributionGroupResponse;
  use Moose;
  has TrafficDistributionGroup => (is => 'ro', isa => 'Paws::Connect::TrafficDistributionGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeTrafficDistributionGroupResponse

=head1 ATTRIBUTES


=head2 TrafficDistributionGroup => L<Paws::Connect::TrafficDistributionGroup>

Information about the traffic distribution group.


=head2 _request_id => Str


=cut

