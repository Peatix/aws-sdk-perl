
package Paws::Route53RecoveryControlConfig::ListClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryControlConfig::Cluster]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::Route53RecoveryControlConfig::Cluster>]

An array of the clusters in an account.


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 _request_id => Str


=cut

