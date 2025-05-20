
package Paws::QBusiness::UpdatePlugin;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AuthConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PluginAuthConfiguration', traits => ['NameInRequest'], request_name => 'authConfiguration');
  has CustomPluginConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomPluginConfiguration', traits => ['NameInRequest'], request_name => 'customPluginConfiguration');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has PluginId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'pluginId', required => 1);
  has ServerUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverUrl');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePlugin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/plugins/{pluginId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdatePluginResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdatePlugin - Arguments for method UpdatePlugin on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePlugin on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdatePlugin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePlugin.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdatePluginResponse = $qbusiness->UpdatePlugin(
      ApplicationId     => 'MyApplicationId',
      PluginId          => 'MyPluginId',
      AuthConfiguration => {
        BasicAuthConfiguration => {
          RoleArn   => 'MyRoleArn',      # max: 1284
          SecretArn => 'MySecretArn',    # max: 1284

        },    # OPTIONAL
        IdcAuthConfiguration => {
          IdcApplicationArn => 'MyIdcApplicationArn',    # min: 10, max: 1224
          RoleArn           => 'MyRoleArn',              # max: 1284

        },    # OPTIONAL
        NoAuthConfiguration => {

        },    # OPTIONAL
        OAuth2ClientCredentialConfiguration => {
          RoleArn          => 'MyRoleArn',      # max: 1284
          SecretArn        => 'MySecretArn',    # max: 1284
          AuthorizationUrl => 'MyUrl',          # min: 1, max: 2048; OPTIONAL
          TokenUrl         => 'MyUrl',          # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CustomPluginConfiguration => {
        ApiSchema => {
          Payload => 'MyPayload',    # OPTIONAL
          S3      => {
            Bucket => 'MyS3BucketName',    # min: 1, max: 63
            Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

          },    # OPTIONAL
        },
        ApiSchemaType => 'OPEN_API_V3',            # values: OPEN_API_V3
        Description   => 'MyPluginDescription',    # min: 1, max: 200

      },    # OPTIONAL
      DisplayName => 'MyPluginName',    # OPTIONAL
      ServerUrl   => 'MyUrl',           # OPTIONAL
      State       => 'ENABLED',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdatePlugin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application the plugin is attached to.



=head2 AuthConfiguration => L<Paws::QBusiness::PluginAuthConfiguration>

The authentication configuration the plugin is using.



=head2 CustomPluginConfiguration => L<Paws::QBusiness::CustomPluginConfiguration>

The configuration for a custom plugin.



=head2 DisplayName => Str

The name of the plugin.



=head2 B<REQUIRED> PluginId => Str

The identifier of the plugin.



=head2 ServerUrl => Str

The source URL used for plugin configuration.



=head2 State => Str

The status of the plugin.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePlugin in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

