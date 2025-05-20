
package Paws::CodeArtifact::UpdatePackageGroupOriginConfiguration;
  use Moose;
  has AddAllowedRepositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageGroupAllowedRepository]', traits => ['NameInRequest'], request_name => 'addAllowedRepositories');
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has PackageGroup => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package-group', required => 1);
  has RemoveAllowedRepositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageGroupAllowedRepository]', traits => ['NameInRequest'], request_name => 'removeAllowedRepositories');
  has Restrictions => (is => 'ro', isa => 'Paws::CodeArtifact::OriginRestrictions', traits => ['NameInRequest'], request_name => 'restrictions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackageGroupOriginConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package-group-origin-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::UpdatePackageGroupOriginConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::UpdatePackageGroupOriginConfiguration - Arguments for method UpdatePackageGroupOriginConfiguration on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackageGroupOriginConfiguration on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method UpdatePackageGroupOriginConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackageGroupOriginConfiguration.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $UpdatePackageGroupOriginConfigurationResult =
      $codeartifact->UpdatePackageGroupOriginConfiguration(
      Domain                 => 'MyDomainName',
      PackageGroup           => 'MyPackageGroupPattern',
      AddAllowedRepositories => [
        {
          OriginRestrictionType => 'EXTERNAL_UPSTREAM'
          ,    # values: EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH; OPTIONAL
          RepositoryName => 'MyRepositoryName',    # min: 2, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DomainOwner               => 'MyAccountId',    # OPTIONAL
      RemoveAllowedRepositories => [
        {
          OriginRestrictionType => 'EXTERNAL_UPSTREAM'
          ,    # values: EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH; OPTIONAL
          RepositoryName => 'MyRepositoryName',    # min: 2, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Restrictions => {
        'EXTERNAL_UPSTREAM' => 'ALLOW'
        , # key: values: EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH; OPTIONAL, value: values: ALLOW, ALLOW_SPECIFIC_REPOSITORIES, BLOCK, INHERIT
      },    # OPTIONAL
      );

    # Results:
    my $AllowedRepositoryUpdates =
      $UpdatePackageGroupOriginConfigurationResult->AllowedRepositoryUpdates;
    my $PackageGroup =
      $UpdatePackageGroupOriginConfigurationResult->PackageGroup;

# Returns a L<Paws::CodeArtifact::UpdatePackageGroupOriginConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/UpdatePackageGroupOriginConfiguration>

=head1 ATTRIBUTES


=head2 AddAllowedRepositories => ArrayRef[L<Paws::CodeArtifact::PackageGroupAllowedRepository>]

The repository name and restrictions to add to the allowed repository
list of the specified package group.



=head2 B<REQUIRED> Domain => Str

The name of the domain which contains the package group for which to
update the origin configuration.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> PackageGroup => Str

The pattern of the package group for which to update the origin
configuration.



=head2 RemoveAllowedRepositories => ArrayRef[L<Paws::CodeArtifact::PackageGroupAllowedRepository>]

The repository name and restrictions to remove from the allowed
repository list of the specified package group.



=head2 Restrictions => L<Paws::CodeArtifact::OriginRestrictions>

The origin configuration settings that determine how package versions
can enter repositories.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackageGroupOriginConfiguration in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

