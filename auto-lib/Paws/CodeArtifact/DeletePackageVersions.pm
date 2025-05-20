
package Paws::CodeArtifact::DeletePackageVersions;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has ExpectedStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expectedStatus');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'versions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePackageVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/versions/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DeletePackageVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeletePackageVersions - Arguments for method DeletePackageVersions on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePackageVersions on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DeletePackageVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePackageVersions.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DeletePackageVersionsResult = $codeartifact->DeletePackageVersions(
      Domain     => 'MyDomainName',
      Format     => 'npm',
      Package    => 'MyPackageName',
      Repository => 'MyRepositoryName',
      Versions   => [
        'MyPackageVersion', ...    # min: 1, max: 255
      ],
      DomainOwner    => 'MyAccountId',           # OPTIONAL
      ExpectedStatus => 'Published',             # OPTIONAL
      Namespace      => 'MyPackageNamespace',    # OPTIONAL
    );

    # Results:
    my $FailedVersions     = $DeletePackageVersionsResult->FailedVersions;
    my $SuccessfulVersions = $DeletePackageVersionsResult->SuccessfulVersions;

    # Returns a L<Paws::CodeArtifact::DeletePackageVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DeletePackageVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the package to delete.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 ExpectedStatus => Str

The expected status of the package version to delete.

Valid values are: C<"Published">, C<"Unfinished">, C<"Unlisted">, C<"Archived">, C<"Disposed">, C<"Deleted">

=head2 B<REQUIRED> Format => Str

The format of the package versions to delete.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package versions to be deleted. The package
component that specifies its namespace depends on its type. For
example:

The namespace is required when deleting package versions of the
following formats:

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




=head2 B<REQUIRED> Package => Str

The name of the package with the versions to delete.



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the package versions to
delete.



=head2 B<REQUIRED> Versions => ArrayRef[Str|Undef]

An array of strings that specify the versions of the package to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePackageVersions in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

