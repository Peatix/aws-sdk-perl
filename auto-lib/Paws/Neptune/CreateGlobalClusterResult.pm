
package Paws::Neptune::CreateGlobalClusterResult;
  use Moose;
  has GlobalCluster => (is => 'ro', isa => 'Paws::Neptune::GlobalCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateGlobalClusterResult

=head1 ATTRIBUTES


=head2 GlobalCluster => L<Paws::Neptune::GlobalCluster>




=head2 _request_id => Str


=cut

