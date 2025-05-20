
package Paws::CodeArtifact::ListPackageVersionDependenciesResult;
  use Moose;
  has Dependencies => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageDependency]', traits => ['NameInRequest'], request_name => 'dependencies');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Package => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'package');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VersionRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionRevision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersionDependenciesResult

=head1 ATTRIBUTES


=head2 Dependencies => ArrayRef[L<Paws::CodeArtifact::PackageDependency>]

The returned list of PackageDependency
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)
objects.


=head2 Format => Str

A format that specifies the type of the package that contains the
returned dependencies.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">
=head2 Namespace => Str

The namespace of the package version that contains the returned
dependencies. The package component that specifies its namespace
depends on its type. For example:

The namespace is required when listing dependencies from package
versions of the following formats:

=over

=item *

Maven

=back

=over

=item *

The namespace of a Maven package version is its C<groupId>.

=item *

The namespace of an npm package version is its C<scope>.

=item *

Python and NuGet package versions do not contain a corresponding
component, package versions of those formats do not have a namespace.

=back



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 Package => Str

The name of the package that contains the returned package versions
dependencies.


=head2 Version => Str

The version of the package that is specified in the request.


=head2 VersionRevision => Str

The current revision associated with the package version.


=head2 _request_id => Str


=cut

