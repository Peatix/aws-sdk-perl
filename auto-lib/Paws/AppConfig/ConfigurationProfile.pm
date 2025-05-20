
package Paws::AppConfig::ConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RetrievalRoleArn => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Validators => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Validator]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ConfigurationProfile

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID.


=head2 Description => Str

The configuration profile description.


=head2 Id => Str

The configuration profile ID.


=head2 KmsKeyArn => Str

The Amazon Resource Name of the Key Management Service key to encrypt
new configuration data versions in the AppConfig hosted configuration
store. This attribute is only used for C<hosted> configuration types.
To encrypt data managed in other configuration stores, see the
documentation for how to specify an KMS key for that particular
service.


=head2 KmsKeyIdentifier => Str

The Key Management Service key identifier (key ID, key alias, or key
ARN) provided when the resource was created or updated.


=head2 LocationUri => Str

The URI location of the configuration.


=head2 Name => Str

The name of the configuration profile.


=head2 RetrievalRoleArn => Str

The ARN of an IAM role with permission to access the configuration at
the specified C<LocationUri>.


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


=head2 _request_id => Str


=cut

