
package Paws::AppConfig::CreateConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RetrievalRoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');
  has Type => (is => 'ro', isa => 'Str');
  has Validators => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Validator]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ConfigurationProfile');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateConfigurationProfile - Arguments for method CreateConfigurationProfile on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationProfile on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateConfigurationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationProfile.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To create a configuration profile
    # The following create-configuration-profile example creates a configuration
    # profile using a configuration stored in Parameter Store, a capability of
    # Systems Manager.
    my $ConfigurationProfile = $appconfig->CreateConfigurationProfile(
      'ApplicationId'    => '339ohji',
      'LocationUri'      => 'ssm-parameter://Example-Parameter',
      'Name'             => 'Example-Configuration-Profile',
      'RetrievalRoleArn' =>
        'arn:aws:iam::111122223333:role/Example-App-Config-Role'
    );

    # Results:
    my $ApplicationId    = $ConfigurationProfile->ApplicationId;
    my $Id               = $ConfigurationProfile->Id;
    my $LocationUri      = $ConfigurationProfile->LocationUri;
    my $Name             = $ConfigurationProfile->Name;
    my $RetrievalRoleArn = $ConfigurationProfile->RetrievalRoleArn;

    # Returns a L<Paws::AppConfig::ConfigurationProfile> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateConfigurationProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 Description => Str

A description of the configuration profile.



=head2 KmsKeyIdentifier => Str

The identifier for an Key Management Service key to encrypt new
configuration data versions in the AppConfig hosted configuration
store. This attribute is only used for C<hosted> configuration types.
The identifier can be an KMS key ID, alias, or the Amazon Resource Name
(ARN) of the key ID or alias. To encrypt data managed in other
configuration stores, see the documentation for how to specify an KMS
key for that particular service.



=head2 B<REQUIRED> LocationUri => Str

A URI to locate the configuration. You can specify the following:

=over

=item *

For the AppConfig hosted configuration store and for feature flags,
specify C<hosted>.

=item *

For an Amazon Web Services Systems Manager Parameter Store parameter,
specify either the parameter name in the format
C<ssm-parameter://E<lt>parameter nameE<gt>> or the ARN.

=item *

For an Amazon Web Services CodePipeline pipeline, specify the URI in
the following format: C<codepipeline>://E<lt>pipeline nameE<gt>.

=item *

For an Secrets Manager secret, specify the URI in the following format:
C<secretsmanager>://E<lt>secret nameE<gt>.

=item *

For an Amazon S3 object, specify the URI in the following format:
C<s3://E<lt>bucketE<gt>/E<lt>objectKeyE<gt> >. Here is an example:
C<s3://amzn-s3-demo-bucket/my-app/us-east-1/my-config.json>

=item *

For an SSM document, specify either the document name in the format
C<ssm-document://E<lt>document nameE<gt>> or the Amazon Resource Name
(ARN).

=back




=head2 B<REQUIRED> Name => Str

A name for the configuration profile.



=head2 RetrievalRoleArn => Str

The ARN of an IAM role with permission to access the configuration at
the specified C<LocationUri>.

A retrieval role ARN is not required for configurations stored in
CodePipeline or the AppConfig hosted configuration store. It is
required for all other sources that store your configuration.



=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to the configuration profile. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define.



=head2 Type => Str

The type of configurations contained in the profile. AppConfig supports
C<feature flags> and C<freeform> configurations. We recommend you
create feature flag configurations to enable or disable new features
and freeform configurations to distribute configurations to an
application. When calling this API, enter one of the following values
for C<Type>:

C<AWS.AppConfig.FeatureFlags>

C<AWS.Freeform>



=head2 Validators => ArrayRef[L<Paws::AppConfig::Validator>]

A list of methods for validating the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationProfile in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

