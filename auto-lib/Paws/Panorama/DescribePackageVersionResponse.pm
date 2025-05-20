
package Paws::Panorama::DescribePackageVersionResponse;
  use Moose;
  has IsLatestPatch => (is => 'ro', isa => 'Bool', required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has PackageArn => (is => 'ro', isa => 'Str');
  has PackageId => (is => 'ro', isa => 'Str', required => 1);
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', required => 1);
  has PatchVersion => (is => 'ro', isa => 'Str', required => 1);
  has RegisteredTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusDescription => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribePackageVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsLatestPatch => Bool

Whether the version is the latest available.


=head2 OwnerAccount => Str

The account ID of the version's owner.


=head2 PackageArn => Str

The ARN of the package.


=head2 B<REQUIRED> PackageId => Str

The version's ID.


=head2 B<REQUIRED> PackageName => Str

The version's name.


=head2 B<REQUIRED> PackageVersion => Str

The version's version.


=head2 B<REQUIRED> PatchVersion => Str

The version's patch version.


=head2 RegisteredTime => Str

The version's registered time.


=head2 B<REQUIRED> Status => Str

The version's status.

Valid values are: C<"REGISTER_PENDING">, C<"REGISTER_COMPLETED">, C<"FAILED">, C<"DELETING">
=head2 StatusDescription => Str

The version's status description.


=head2 _request_id => Str


=cut

