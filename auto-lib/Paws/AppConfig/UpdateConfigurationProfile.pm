
package Paws::AppConfig::UpdateConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RetrievalRoleArn => (is => 'ro', isa => 'Str');
  has Validators => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Validator]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ConfigurationProfile');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateConfigurationProfile - Arguments for method UpdateConfigurationProfile on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationProfile on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateConfigurationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationProfile.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
 # To update a configuration profile
 # The following update-configuration-profile example updates the description of
 # the specified configuration profile.
    my $ConfigurationProfile = $appconfig->UpdateConfigurationProfile(
      'ApplicationId'          => '339ohji',
      'ConfigurationProfileId' => 'ur8hx2f',
      'Description'            => 'Configuration profile used for examples.'
    );

    # Results:
    my $ApplicationId    = $ConfigurationProfile->ApplicationId;
    my $Description      = $ConfigurationProfile->Description;
    my $Id               = $ConfigurationProfile->Id;
    my $LocationUri      = $ConfigurationProfile->LocationUri;
    my $Name             = $ConfigurationProfile->Name;
    my $RetrievalRoleArn = $ConfigurationProfile->RetrievalRoleArn;

    # Returns a L<Paws::AppConfig::ConfigurationProfile> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateConfigurationProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The ID of the configuration profile.



=head2 Description => Str

A description of the configuration profile.



=head2 KmsKeyIdentifier => Str

The identifier for a Key Management Service key to encrypt new
configuration data versions in the AppConfig hosted configuration
store. This attribute is only used for C<hosted> configuration types.
The identifier can be an KMS key ID, alias, or the Amazon Resource Name
(ARN) of the key ID or alias. To encrypt data managed in other
configuration stores, see the documentation for how to specify an KMS
key for that particular service.



=head2 Name => Str

The name of the configuration profile.



=head2 RetrievalRoleArn => Str

The ARN of an IAM role with permission to access the configuration at
the specified C<LocationUri>.

A retrieval role ARN is not required for configurations stored in
CodePipeline or the AppConfig hosted configuration store. It is
required for all other sources that store your configuration.



=head2 Validators => ArrayRef[L<Paws::AppConfig::Validator>]

A list of methods for validating the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationProfile in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

