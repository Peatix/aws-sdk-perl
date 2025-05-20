
package Paws::DataZone::UpdateProjectProfile;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has DomainUnitIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitIdentifier');
  has EnvironmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfiguration]', traits => ['NameInRequest'], request_name => 'environmentConfigurations');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProjectProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/project-profiles/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateProjectProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateProjectProfile - Arguments for method UpdateProjectProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProjectProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateProjectProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProjectProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateProjectProfileOutput = $datazone->UpdateProjectProfile(
      DomainIdentifier          => 'MyDomainId',
      Identifier                => 'MyProjectProfileId',
      Description               => 'MyDescription',        # OPTIONAL
      DomainUnitIdentifier      => 'MyDomainUnitId',       # OPTIONAL
      EnvironmentConfigurations => [
        {
          AwsAccount => {
            AwsAccountId     => 'MyAwsAccountId',    # OPTIONAL
            AwsAccountIdPath =>
              'MyParameterStorePath',    # min: 1, max: 2048; OPTIONAL
          },
          AwsRegion => {
            RegionName     => 'MyRegionName',    # min: 4, max: 16; OPTIONAL
            RegionNamePath =>
              'MyParameterStorePath',            # min: 1, max: 2048; OPTIONAL
          },
          EnvironmentBlueprintId => 'MyEnvironmentBlueprintId',
          Name => 'MyEnvironmentConfigurationName',    # min: 1, max: 64
          ConfigurationParameters => {
            ParameterOverrides => [
              {
                IsEditable => 1,    # OPTIONAL
                Name  => 'MyEnvironmentConfigurationParameterName',   # OPTIONAL
                Value => 'MyString',                                  # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            ResolvedParameters => [
              {
                IsEditable => 1,    # OPTIONAL
                Name  => 'MyEnvironmentConfigurationParameterName',   # OPTIONAL
                Value => 'MyString',                                  # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            SsmPath => 'MyParameterStorePath',    # min: 1, max: 2048; OPTIONAL
          },    # OPTIONAL
          DeploymentMode =>
            'ON_CREATE',    # values: ON_CREATE, ON_DEMAND; OPTIONAL
          DeploymentOrder => 1,                              # max: 16; OPTIONAL
          Description     => 'MyDescription',                # max: 2048
          Id              => 'MyEnvironmentConfigurationId', # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name   => 'MyProjectProfileName',    # OPTIONAL
      Status => 'ENABLED',                 # OPTIONAL
    );

    # Results:
    my $CreatedAt    = $UpdateProjectProfileOutput->CreatedAt;
    my $CreatedBy    = $UpdateProjectProfileOutput->CreatedBy;
    my $Description  = $UpdateProjectProfileOutput->Description;
    my $DomainId     = $UpdateProjectProfileOutput->DomainId;
    my $DomainUnitId = $UpdateProjectProfileOutput->DomainUnitId;
    my $EnvironmentConfigurations =
      $UpdateProjectProfileOutput->EnvironmentConfigurations;
    my $Id            = $UpdateProjectProfileOutput->Id;
    my $LastUpdatedAt = $UpdateProjectProfileOutput->LastUpdatedAt;
    my $Name          = $UpdateProjectProfileOutput->Name;
    my $Status        = $UpdateProjectProfileOutput->Status;

    # Returns a L<Paws::DataZone::UpdateProjectProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateProjectProfile>

=head1 ATTRIBUTES


=head2 Description => Str

The description of a project profile.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where a project profile is to be updated.



=head2 DomainUnitIdentifier => Str

The ID of the domain unit where a project profile is to be updated.



=head2 EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]

The environment configurations of a project profile.



=head2 B<REQUIRED> Identifier => Str

The ID of a project profile that is to be updated.



=head2 Name => Str

The name of a project profile.



=head2 Status => Str

The status of a project profile.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProjectProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

