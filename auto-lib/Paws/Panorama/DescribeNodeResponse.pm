
package Paws::Panorama::DescribeNodeResponse;
  use Moose;
  has AssetName => (is => 'ro', isa => 'Str');
  has Category => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', required => 1);
  has NodeInterface => (is => 'ro', isa => 'Paws::Panorama::NodeInterface', required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', required => 1);
  has PackageArn => (is => 'ro', isa => 'Str');
  has PackageId => (is => 'ro', isa => 'Str', required => 1);
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', required => 1);
  has PatchVersion => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeNodeResponse

=head1 ATTRIBUTES


=head2 AssetName => Str

The node's asset name.


=head2 B<REQUIRED> Category => Str

The node's category.

Valid values are: C<"BUSINESS_LOGIC">, C<"ML_MODEL">, C<"MEDIA_SOURCE">, C<"MEDIA_SINK">
=head2 B<REQUIRED> CreatedTime => Str

When the node was created.


=head2 B<REQUIRED> Description => Str

The node's description.


=head2 B<REQUIRED> LastUpdatedTime => Str

When the node was updated.


=head2 B<REQUIRED> Name => Str

The node's name.


=head2 B<REQUIRED> NodeId => Str

The node's ID.


=head2 B<REQUIRED> NodeInterface => L<Paws::Panorama::NodeInterface>

The node's interface.


=head2 B<REQUIRED> OwnerAccount => Str

The account ID of the node's owner.


=head2 PackageArn => Str

The node's ARN.


=head2 B<REQUIRED> PackageId => Str

The node's package ID.


=head2 B<REQUIRED> PackageName => Str

The node's package name.


=head2 B<REQUIRED> PackageVersion => Str

The node's package version.


=head2 B<REQUIRED> PatchVersion => Str

The node's patch version.


=head2 _request_id => Str


=cut

