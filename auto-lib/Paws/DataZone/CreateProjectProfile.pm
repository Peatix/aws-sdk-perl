
package Paws::DataZone::CreateProjectProfile;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has DomainUnitIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitIdentifier');
  has EnvironmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfiguration]', traits => ['NameInRequest'], request_name => 'environmentConfigurations');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProjectProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/project-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateProjectProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateProjectProfile - Arguments for method CreateProjectProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProjectProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateProjectProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProjectProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateProjectProfileOutput = $datazone->CreateProjectProfile(
      DomainIdentifier          => 'MyDomainId',
      Name                      => 'MyProjectProfileName',
      Description               => 'MyDescription',          # OPTIONAL
      DomainUnitIdentifier      => 'MyDomainUnitId',         # OPTIONAL
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
      Status => 'ENABLED',    # OPTIONAL
    );

    # Results:
    my $CreatedAt    = $CreateProjectProfileOutput->CreatedAt;
    my $CreatedBy    = $CreateProjectProfileOutput->CreatedBy;
    my $Description  = $CreateProjectProfileOutput->Description;
    my $DomainId     = $CreateProjectProfileOutput->DomainId;
    my $DomainUnitId = $CreateProjectProfileOutput->DomainUnitId;
    my $EnvironmentConfigurations =
      $CreateProjectProfileOutput->EnvironmentConfigurations;
    my $Id            = $CreateProjectProfileOutput->Id;
    my $LastUpdatedAt = $CreateProjectProfileOutput->LastUpdatedAt;
    my $Name          = $CreateProjectProfileOutput->Name;
    my $Status        = $CreateProjectProfileOutput->Status;

    # Returns a L<Paws::DataZone::CreateProjectProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateProjectProfile>

=head1 ATTRIBUTES


=head2 Description => Str

A description of a project profile.



=head2 B<REQUIRED> DomainIdentifier => Str

A domain ID of the project profile.



=head2 DomainUnitIdentifier => Str

A domain unit ID of the project profile.



=head2 EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]

Environment configurations of the project profile.



=head2 B<REQUIRED> Name => Str

Project profile name.



=head2 Status => Str

Project profile status.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProjectProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

