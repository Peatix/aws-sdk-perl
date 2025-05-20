
package Paws::DocDBElastic::GetClusterSnapshotOutput;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::DocDBElastic::ClusterSnapshot', traits => ['NameInRequest'], request_name => 'snapshot', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::GetClusterSnapshotOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Snapshot => L<Paws::DocDBElastic::ClusterSnapshot>

Returns information about a specific elastic cluster snapshot.


=head2 _request_id => Str


=cut

