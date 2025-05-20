
package Paws::Route53RecoveryControlConfig::UpdateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::Route53RecoveryControlConfig::Cluster>

The cluster that was updated.


=head2 _request_id => Str


=cut

