
package Paws::PCS::GetClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::PCS::Cluster', traits => ['NameInRequest'], request_name => 'cluster' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::GetClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::PCS::Cluster>

The cluster resource.


=head2 _request_id => Str


=cut

1;