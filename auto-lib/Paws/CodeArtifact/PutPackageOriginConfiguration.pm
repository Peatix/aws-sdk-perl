
package Paws::CodeArtifact::PutPackageOriginConfiguration;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has Restrictions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageOriginRestrictions', traits => ['NameInRequest'], request_name => 'restrictions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPackageOriginConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::PutPackageOriginConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PutPackageOriginConfiguration - Arguments for method PutPackageOriginConfiguration on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPackageOriginConfiguration on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method PutPackageOriginConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPackageOriginConfiguration.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $PutPackageOriginConfigurationResult =
      $codeartifact->PutPackageOriginConfiguration(
      Domain       => 'MyDomainName',
      Format       => 'npm',
      Package      => 'MyPackageName',
      Repository   => 'MyRepositoryName',
      Restrictions => {
        Publish  => 'ALLOW',    # values: ALLOW, BLOCK
        Upstream => 'ALLOW',    # values: ALLOW, BLOCK

      },
      DomainOwner => 'MyAccountId',           # OPTIONAL
      Namespace   => 'MyPackageNamespace',    # OPTIONAL
      );

    # Results:
    my $OriginConfiguration =
      $PutPackageOriginConfigurationResult->OriginConfiguration;

  # Returns a L<Paws::CodeArtifact::PutPackageOriginConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/PutPackageOriginConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
package.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

A format that specifies the type of the package to be updated.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package to be updated. The package component that
specifies its namespace depends on its type. For example:

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

The name of the package to be updated.



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the package.



=head2 B<REQUIRED> Restrictions => L<Paws::CodeArtifact::PackageOriginRestrictions>

A PackageOriginRestrictions
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html)
object that contains information about the C<upstream> and C<publish>
package origin restrictions. The C<upstream> restriction determines if
new package versions can be ingested or retained from external
connections or upstream repositories. The C<publish> restriction
determines if new package versions can be published directly to the
repository.

You must include both the desired C<upstream> and C<publish>
restrictions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPackageOriginConfiguration in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

