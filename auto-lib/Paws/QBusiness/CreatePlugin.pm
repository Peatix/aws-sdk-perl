
package Paws::QBusiness::CreatePlugin;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AuthConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PluginAuthConfiguration', traits => ['NameInRequest'], request_name => 'authConfiguration', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomPluginConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomPluginConfiguration', traits => ['NameInRequest'], request_name => 'customPluginConfiguration');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has ServerUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverUrl');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlugin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/plugins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreatePluginResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreatePlugin - Arguments for method CreatePlugin on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlugin on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreatePlugin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlugin.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreatePluginResponse = $qbusiness->CreatePlugin(
      ApplicationId     => 'MyApplicationId',
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
      },
      DisplayName               => 'MyPluginName',
      Type                      => 'SERVICE_NOW',
      ClientToken               => 'MyClientToken',    # OPTIONAL
      CustomPluginConfiguration => {
        ApiSchema => {
          Payload => 'MyPayload',                      # OPTIONAL
          S3      => {
            Bucket => 'MyS3BucketName',                # min: 1, max: 63
            Key    => 'MyS3ObjectKey',                 # min: 1, max: 1024

          },    # OPTIONAL
        },
        ApiSchemaType => 'OPEN_API_V3',            # values: OPEN_API_V3
        Description   => 'MyPluginDescription',    # min: 1, max: 200

      },    # OPTIONAL
      ServerUrl => 'MyUrl',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BuildStatus = $CreatePluginResponse->BuildStatus;
    my $PluginArn   = $CreatePluginResponse->PluginArn;
    my $PluginId    = $CreatePluginResponse->PluginId;

    # Returns a L<Paws::QBusiness::CreatePluginResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreatePlugin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application that will contain the plugin.



=head2 B<REQUIRED> AuthConfiguration => L<Paws::QBusiness::PluginAuthConfiguration>





=head2 ClientToken => Str

A token that you provide to identify the request to create your Amazon
Q Business plugin.



=head2 CustomPluginConfiguration => L<Paws::QBusiness::CustomPluginConfiguration>

Contains configuration for a custom plugin.



=head2 B<REQUIRED> DisplayName => Str

A the name for your plugin.



=head2 ServerUrl => Str

The source URL used for plugin configuration.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize the data source
connector. You can also use tags to help control access to the data
source connector. Tag keys and values can consist of Unicode letters,
digits, white space, and any of the following symbols: _ . : / = + - @.



=head2 B<REQUIRED> Type => Str

The type of plugin you want to create.

Valid values are: C<"SERVICE_NOW">, C<"SALESFORCE">, C<"JIRA">, C<"ZENDESK">, C<"CUSTOM">, C<"QUICKSIGHT">, C<"SERVICENOW_NOW_PLATFORM">, C<"JIRA_CLOUD">, C<"SALESFORCE_CRM">, C<"ZENDESK_SUITE">, C<"ATLASSIAN_CONFLUENCE">, C<"GOOGLE_CALENDAR">, C<"MICROSOFT_TEAMS">, C<"MICROSOFT_EXCHANGE">, C<"PAGERDUTY_ADVANCE">, C<"SMARTSHEET">, C<"ASANA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlugin in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

