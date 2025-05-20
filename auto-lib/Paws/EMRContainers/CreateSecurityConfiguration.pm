
package Paws::EMRContainers::CreateSecurityConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SecurityConfigurationData => (is => 'ro', isa => 'Paws::EMRContainers::SecurityConfigurationData', traits => ['NameInRequest'], request_name => 'securityConfigurationData', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/securityconfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::CreateSecurityConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateSecurityConfiguration - Arguments for method CreateSecurityConfiguration on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityConfiguration on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method CreateSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityConfiguration.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $CreateSecurityConfigurationResponse =
      $emr -containers->CreateSecurityConfiguration(
      ClientToken               => 'MyClientToken',
      Name                      => 'MyResourceNameString',
      SecurityConfigurationData => {
        AuthorizationConfiguration => {
          EncryptionConfiguration => {
            InTransitEncryptionConfiguration => {
              TlsCertificateConfiguration => {
                CertificateProviderType     => 'PEM',    # values: PEM; OPTIONAL
                PrivateCertificateSecretArn =>
                  'MySecretsManagerArn',    # min: 3, max: 2048; OPTIONAL
                PublicCertificateSecretArn =>
                  'MySecretsManagerArn',    # min: 3, max: 2048; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          LakeFormationConfiguration => {
            AuthorizedSessionTagValue =>
              'MySessionTagValue',    # min: 1, max: 512; OPTIONAL
            QueryEngineRoleArn => 'MyIAMRoleArn', # min: 20, max: 2048; OPTIONAL
            SecureNamespaceInfo => {
              ClusterId => 'MyClusterId',           # min: 1, max: 100; OPTIONAL
              Namespace => 'MyKubernetesNamespace', # min: 1, max: 63; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Tags => {
        'MyString128' =>
          'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn  = $CreateSecurityConfigurationResponse->Arn;
    my $Id   = $CreateSecurityConfigurationResponse->Id;
    my $Name = $CreateSecurityConfigurationResponse->Name;

 # Returns a L<Paws::EMRContainers::CreateSecurityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/CreateSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The client idempotency token to use when creating the security
configuration.



=head2 B<REQUIRED> Name => Str

The name of the security configuration.



=head2 B<REQUIRED> SecurityConfigurationData => L<Paws::EMRContainers::SecurityConfigurationData>

Security configuration input for the request.



=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags to add to the security configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityConfiguration in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

