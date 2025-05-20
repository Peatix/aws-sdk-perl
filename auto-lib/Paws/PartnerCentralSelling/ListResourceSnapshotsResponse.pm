
package Paws::PartnerCentralSelling::ListResourceSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceSnapshotSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::ResourceSnapshotSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListResourceSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. If there are no
additional results, this value is null.


=head2 B<REQUIRED> ResourceSnapshotSummaries => ArrayRef[L<Paws::PartnerCentralSelling::ResourceSnapshotSummary>]

An array of resource snapshot summary objects.


=head2 _request_id => Str


=cut

1;