
package Paws::PartnerCentralSelling::CreateResourceSnapshotResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateResourceSnapshotResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Specifies the Amazon Resource Name (ARN) that uniquely identifies the
snapshot created.


=head2 Revision => Int

Specifies the revision number of the created snapshot. This field
provides important information about the snapshot's place in the
sequence of snapshots for the given resource.


=head2 _request_id => Str


=cut

1;