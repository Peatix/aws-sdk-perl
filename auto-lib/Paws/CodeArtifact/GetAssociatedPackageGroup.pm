
package Paws::CodeArtifact::GetAssociatedPackageGroup;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssociatedPackageGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/get-associated-package-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::GetAssociatedPackageGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetAssociatedPackageGroup - Arguments for method GetAssociatedPackageGroup on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssociatedPackageGroup on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method GetAssociatedPackageGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssociatedPackageGroup.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $GetAssociatedPackageGroupResult =
      $codeartifact->GetAssociatedPackageGroup(
      Domain      => 'MyDomainName',
      Format      => 'npm',
      Package     => 'MyPackageName',
      DomainOwner => 'MyAccountId',           # OPTIONAL
      Namespace   => 'MyPackageNamespace',    # OPTIONAL
      );

    # Results:
    my $AssociationType = $GetAssociatedPackageGroupResult->AssociationType;
    my $PackageGroup    = $GetAssociatedPackageGroupResult->PackageGroup;

    # Returns a L<Paws::CodeArtifact::GetAssociatedPackageGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/GetAssociatedPackageGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the package from which to get the
associated package group.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the package from which to get the associated package
group.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package from which to get the associated package
group. The package component that specifies its namespace depends on
its type. For example:

The namespace is required when getting associated package groups from
packages of the following formats:

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

The package from which to get the associated package group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssociatedPackageGroup in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

