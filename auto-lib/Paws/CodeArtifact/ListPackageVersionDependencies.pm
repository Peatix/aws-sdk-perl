
package Paws::CodeArtifact::ListPackageVersionDependencies;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageVersionDependencies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/version/dependencies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListPackageVersionDependenciesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersionDependencies - Arguments for method ListPackageVersionDependencies on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageVersionDependencies on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListPackageVersionDependencies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageVersionDependencies.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListPackageVersionDependenciesResult =
      $codeartifact->ListPackageVersionDependencies(
      Domain         => 'MyDomainName',
      Format         => 'npm',
      Package        => 'MyPackageName',
      PackageVersion => 'MyPackageVersion',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',           # OPTIONAL
      Namespace      => 'MyPackageNamespace',    # OPTIONAL
      NextToken      => 'MyPaginationToken',     # OPTIONAL
      );

    # Results:
    my $Dependencies = $ListPackageVersionDependenciesResult->Dependencies;
    my $Format       = $ListPackageVersionDependenciesResult->Format;
    my $Namespace    = $ListPackageVersionDependenciesResult->Namespace;
    my $NextToken    = $ListPackageVersionDependenciesResult->NextToken;
    my $Package      = $ListPackageVersionDependenciesResult->Package;
    my $Version      = $ListPackageVersionDependenciesResult->Version;
    my $VersionRevision =
      $ListPackageVersionDependenciesResult->VersionRevision;

 # Returns a L<Paws::CodeArtifact::ListPackageVersionDependenciesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListPackageVersionDependencies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
requested package version dependencies.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the package with the requested dependencies.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package version with the requested dependencies.
The package component that specifies its namespace depends on its type.
For example:

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



=head2 B<REQUIRED> Package => Str

The name of the package versions' package.



=head2 B<REQUIRED> PackageVersion => Str

A string that contains the package version (for example, C<3.5.2>).



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the requested package version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageVersionDependencies in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

