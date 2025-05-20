
package Paws::CodeArtifact::ListPackageVersionAssets;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageVersionAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/version/assets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListPackageVersionAssetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersionAssets - Arguments for method ListPackageVersionAssets on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageVersionAssets on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListPackageVersionAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageVersionAssets.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListPackageVersionAssetsResult =
      $codeartifact->ListPackageVersionAssets(
      Domain         => 'MyDomainName',
      Format         => 'npm',
      Package        => 'MyPackageName',
      PackageVersion => 'MyPackageVersion',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',           # OPTIONAL
      MaxResults     => 1,                       # OPTIONAL
      Namespace      => 'MyPackageNamespace',    # OPTIONAL
      NextToken      => 'MyPaginationToken',     # OPTIONAL
      );

    # Results:
    my $Assets          = $ListPackageVersionAssetsResult->Assets;
    my $Format          = $ListPackageVersionAssetsResult->Format;
    my $Namespace       = $ListPackageVersionAssetsResult->Namespace;
    my $NextToken       = $ListPackageVersionAssetsResult->NextToken;
    my $Package         = $ListPackageVersionAssetsResult->Package;
    my $Version         = $ListPackageVersionAssetsResult->Version;
    my $VersionRevision = $ListPackageVersionAssetsResult->VersionRevision;

    # Returns a L<Paws::CodeArtifact::ListPackageVersionAssetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListPackageVersionAssets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository associated with the
package version assets.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the package that contains the requested package version
assets.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 Namespace => Str

The namespace of the package version that contains the requested
package version assets. The package component that specifies its
namespace depends on its type. For example:

The namespace is required requesting assets from package versions of
the following formats:

=over

=item *

Maven

=item *

Swift

=item *

generic

=back

=over

=item *

The namespace of a Maven package version is its C<groupId>.

=item *

The namespace of an npm or Swift package version is its C<scope>.

=item *

The namespace of a generic package is its C<namespace>.

=item *

Python, NuGet, Ruby, and Cargo package versions do not contain a
corresponding component, package versions of those formats do not have
a namespace.

=back




=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> Package => Str

The name of the package that contains the requested package version
assets.



=head2 B<REQUIRED> PackageVersion => Str

A string that contains the package version (for example, C<3.5.2>).



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the package that contains the
requested package version assets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageVersionAssets in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

