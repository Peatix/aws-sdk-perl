
package Paws::DataZone::UpdateConnection;
  use Moose;
  has AwsLocation => (is => 'ro', isa => 'Paws::DataZone::AwsLocation', traits => ['NameInRequest'], request_name => 'awsLocation');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Props => (is => 'ro', isa => 'Paws::DataZone::ConnectionPropertiesPatch', traits => ['NameInRequest'], request_name => 'props');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/connections/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateConnectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateConnection - Arguments for method UpdateConnection on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateConnectionOutput = $datazone->UpdateConnection(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyConnectionId',
      AwsLocation      => {
        AccessRole      => 'MyAwsLocationAccessRoleString',    # OPTIONAL
        AwsAccountId    => 'MyAwsAccountId',                   # OPTIONAL
        AwsRegion       => 'MyAwsRegion',                      # OPTIONAL
        IamConnectionId => 'MyConnectionId',                   # max: 128
      },    # OPTIONAL
      Description => 'MyUpdateConnectionInputDescriptionString',    # OPTIONAL
      Props       => {
        AthenaProperties => {
          WorkgroupName =>
            'MyAthenaPropertiesPatchWorkgroupNameString',    # max: 64; OPTIONAL
        },    # OPTIONAL
        GlueProperties => {
          GlueConnectionInput => {
            AuthenticationConfiguration => {
              BasicAuthenticationCredentials => {
                Password => 'MyBasicAuthenticationCredentialsPasswordString'
                ,    # max: 512; OPTIONAL
                UserName => 'MyBasicAuthenticationCredentialsUserNameString'
                ,    # max: 512; OPTIONAL
              },    # OPTIONAL
              SecretArn =>
                'MyAuthenticationConfigurationPatchSecretArnString',  # OPTIONAL
            },    # OPTIONAL
            ConnectionProperties => {
              'MyString' => 'MyConnectionPropertiesValueString'
              ,    # , value: min: 1, max: 2048
            },    # OPTIONAL
            Description => 'MyString',
          },    # OPTIONAL
        },    # OPTIONAL
        IamProperties => {
          GlueLineageSyncEnabled => 1,    # OPTIONAL
        },    # OPTIONAL
        RedshiftProperties => {
          Credentials => {
            SecretArn => 'MyRedshiftCredentialsSecretArnString',    # OPTIONAL
            UsernamePassword => {
              Password => 'MyPassword',                             # max: 64
              Username => 'MyUsername',                             # max: 64

            },    # OPTIONAL
          },    # OPTIONAL
          DatabaseName =>
            'MyRedshiftPropertiesPatchDatabaseNameString',  # max: 256; OPTIONAL
          Host => 'MyRedshiftPropertiesPatchHostString',    # max: 256; OPTIONAL
          LineageSync => {
            Enabled  => 1,                                  # OPTIONAL
            Schedule => {
              Schedule => 'MyLineageSyncScheduleScheduleString',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Port    => 1,    # OPTIONAL
          Storage => {
            ClusterName => 'MyRedshiftStoragePropertiesClusterNameString'
            ,              # max: 256; OPTIONAL
            WorkgroupName => 'MyRedshiftStoragePropertiesWorkgroupNameString'
            ,              # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SparkEmrProperties => {
          ComputeArn =>
            'MySparkEmrPropertiesPatchComputeArnString',    # max: 256; OPTIONAL
          InstanceProfileArn =>
            'MySparkEmrPropertiesPatchInstanceProfileArnString'
          ,                                                 # max: 256; OPTIONAL
          JavaVirtualEnv => 'MySparkEmrPropertiesPatchJavaVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          LogUri =>
            'MySparkEmrPropertiesPatchLogUriString',        # max: 256; OPTIONAL
          PythonVirtualEnv =>
            'MySparkEmrPropertiesPatchPythonVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          RuntimeRole =>
            'MySparkEmrPropertiesPatchRuntimeRoleString',    # OPTIONAL
          TrustedCertificatesS3Uri =>
            'MySparkEmrPropertiesPatchTrustedCertificatesS3UriString'
          ,    # max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConnectionId      = $UpdateConnectionOutput->ConnectionId;
    my $Description       = $UpdateConnectionOutput->Description;
    my $DomainId          = $UpdateConnectionOutput->DomainId;
    my $DomainUnitId      = $UpdateConnectionOutput->DomainUnitId;
    my $EnvironmentId     = $UpdateConnectionOutput->EnvironmentId;
    my $Name              = $UpdateConnectionOutput->Name;
    my $PhysicalEndpoints = $UpdateConnectionOutput->PhysicalEndpoints;
    my $ProjectId         = $UpdateConnectionOutput->ProjectId;
    my $Props             = $UpdateConnectionOutput->Props;
    my $Type              = $UpdateConnectionOutput->Type;

    # Returns a L<Paws::DataZone::UpdateConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateConnection>

=head1 ATTRIBUTES


=head2 AwsLocation => L<Paws::DataZone::AwsLocation>

The location where a connection is to be updated.



=head2 Description => Str

The description of a connection.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where a connection is to be updated.



=head2 B<REQUIRED> Identifier => Str

The ID of the connection to be updated.



=head2 Props => L<Paws::DataZone::ConnectionPropertiesPatch>

The connection props.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

