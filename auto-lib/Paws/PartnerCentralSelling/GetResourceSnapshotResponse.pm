
package Paws::PartnerCentralSelling::GetResourceSnapshotResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has EngagementId => (is => 'ro', isa => 'Str');
  has Payload => (is => 'ro', isa => 'Paws::PartnerCentralSelling::ResourceSnapshotPayload');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceSnapshotTemplateName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetResourceSnapshotResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies the resource
snapshot.


=head2 B<REQUIRED> Catalog => Str

The catalog in which the snapshot was created. Matches the Catalog
specified in the request.


=head2 CreatedAt => Str

The timestamp when the snapshot was created, in ISO 8601 format (e.g.,
"2023-06-01T14:30:00Z"). This allows for precise tracking of when the
snapshot was taken.


=head2 CreatedBy => Str

The AWS account ID of the principal (user or role) who created the
snapshot. This helps in tracking the origin of the snapshot.


=head2 EngagementId => Str

The identifier of the engagement associated with this snapshot. Matches
the EngagementIdentifier specified in the request.


=head2 Payload => L<Paws::PartnerCentralSelling::ResourceSnapshotPayload>




=head2 ResourceId => Str

The identifier of the specific resource that was snapshotted. Matches
the ResourceIdentifier specified in the request.


=head2 ResourceSnapshotTemplateName => Str

The name of the view used for this snapshot. This is the same as the
template name.


=head2 ResourceType => Str

The type of the resource that was snapshotted. Matches the ResourceType
specified in the request.

Valid values are: C<"Opportunity">
=head2 Revision => Int

The revision number of this snapshot. This is a positive integer that
is sequential and unique within the context of a resource view.


=head2 _request_id => Str


=cut

1;