
package Paws::Route53RecoveryControlConfig::DescribeClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::DescribeClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::Route53RecoveryControlConfig::Cluster>

The cluster for the DescribeCluster request.


=head2 _request_id => Str


=cut

