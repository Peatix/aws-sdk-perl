
package Paws::CodeArtifact::PublishPackageVersionResult;
  use Moose;
  has Asset => (is => 'ro', isa => 'Paws::CodeArtifact::AssetSummary', traits => ['NameInRequest'], request_name => 'asset');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'package');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VersionRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionRevision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PublishPackageVersionResult

=head1 ATTRIBUTES


=head2 Asset => L<Paws::CodeArtifact::AssetSummary>

An AssetSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
for the published asset.


=head2 Format => Str

The format of the package version.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">
=head2 Namespace => Str

The namespace of the package version.


=head2 Package => Str

The name of the package.


=head2 Status => Str

A string that contains the status of the package version. For more
information, see Package version status
(https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status)
in the I<CodeArtifact User Guide>.

Valid values are: C<"Published">, C<"Unfinished">, C<"Unlisted">, C<"Archived">, C<"Disposed">, C<"Deleted">
=head2 Version => Str

The version of the package.


=head2 VersionRevision => Str

The revision of the package version.


=head2 _request_id => Str


=cut

