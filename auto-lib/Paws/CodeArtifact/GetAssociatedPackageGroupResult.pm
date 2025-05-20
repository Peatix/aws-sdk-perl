
package Paws::CodeArtifact::GetAssociatedPackageGroupResult;
  use Moose;
  has AssociationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationType');
  has PackageGroup => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupDescription', traits => ['NameInRequest'], request_name => 'packageGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetAssociatedPackageGroupResult

=head1 ATTRIBUTES


=head2 AssociationType => Str

Describes the strength of the association between the package and
package group. A strong match is also known as an exact match, and a
weak match is known as a relative match.

Valid values are: C<"STRONG">, C<"WEAK">
=head2 PackageGroup => L<Paws::CodeArtifact::PackageGroupDescription>

The package group that is associated with the requested package.


=head2 _request_id => Str


=cut

