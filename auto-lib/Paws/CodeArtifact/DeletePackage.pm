
package Paws::CodeArtifact::DeletePackage;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DeletePackageResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeletePackage - Arguments for method DeletePackage on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePackage on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DeletePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePackage.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DeletePackageResult = $codeartifact->DeletePackage(
      Domain      => 'MyDomainName',
      Format      => 'npm',
      Package     => 'MyPackageName',
      Repository  => 'MyRepositoryName',
      DomainOwner => 'MyAccountId',           # OPTIONAL
      Namespace   => 'MyPackageNamespace',    # OPTIONAL
    );

    # Results:
    my $DeletedPackage = $DeletePackageResult->DeletedPackage;

    # Returns a L<Paws::CodeArtifact::DeletePackageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DeletePackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the package to delete.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the requested package to delete.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package to delete. The package component that
specifies its namespace depends on its type. For example:

The namespace is required when deleting packages of the following
formats:

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

The name of the package to delete.



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the package to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePackage in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

