
package Paws::DocDBElastic::GetClusterOutput;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::DocDBElastic::Cluster', traits => ['NameInRequest'], request_name => 'cluster', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::GetClusterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => L<Paws::DocDBElastic::Cluster>

Returns information about a specific elastic cluster.


=head2 _request_id => Str


=cut

