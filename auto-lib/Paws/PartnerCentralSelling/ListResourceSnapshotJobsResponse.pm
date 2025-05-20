
package Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceSnapshotJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::ResourceSnapshotJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. If there are no
additional results, this value is null.


=head2 B<REQUIRED> ResourceSnapshotJobSummaries => ArrayRef[L<Paws::PartnerCentralSelling::ResourceSnapshotJobSummary>]

An array of resource snapshot job summary objects.


=head2 _request_id => Str


=cut

1;