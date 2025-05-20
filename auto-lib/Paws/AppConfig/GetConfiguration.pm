
package Paws::AppConfig::GetConfiguration;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Application', required => 1);
  has ClientConfigurationVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'client_configuration_version');
  has ClientId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'client_id', required => 1);
  has Configuration => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Configuration', required => 1);
  has Environment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Environment', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{Application}/environments/{Environment}/configurations/{Configuration}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Configuration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetConfiguration - Arguments for method GetConfiguration on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguration on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguration.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
  # To retrieve configuration details
  # The following get-configuration example returns the configuration details of
  # the example application. On subsequent calls to get-configuration, use the
  # client-configuration-version parameter to only update the configuration of
  # your application if the version has changed. Only updating the configuration
  # when the version has changed avoids excess charges incurred by calling
  # get-configuration.
    my $Configuration = $appconfig->GetConfiguration(
      'Application'   => 'example-application',
      'ClientId'      => 'example-id',
      'Configuration' => 'Example-Configuration-Profile',
      'Environment'   => 'Example-Environment'
    );

    # Results:
    my $ConfigurationVersion = $Configuration->ConfigurationVersion;
    my $ContentType          = $Configuration->ContentType;

    # Returns a L<Paws::AppConfig::Configuration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application to get. Specify either the application name or the
application ID.



=head2 ClientConfigurationVersion => Str

The configuration version returned in the most recent GetConfiguration
response.

AppConfig uses the value of the C<ClientConfigurationVersion> parameter
to identify the configuration version on your clients. If you
donE<rsquo>t send C<ClientConfigurationVersion> with each call to
GetConfiguration, your clients receive the current configuration. You
are charged each time your clients receive a configuration.

To avoid excess charges, we recommend you use the
StartConfigurationSession
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html)
and GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html)
APIs, which track the client configuration version on your behalf. If
you choose to continue using GetConfiguration, we recommend that you
include the C<ClientConfigurationVersion> value with every call to
GetConfiguration. The value to use for C<ClientConfigurationVersion>
comes from the C<ConfigurationVersion> attribute returned by
GetConfiguration when there is new or updated data, and should be saved
for subsequent calls to GetConfiguration.

For more information about working with configurations, see Retrieving
feature flags and configuration data in AppConfig
(http://docs.aws.amazon.com/appconfig/latest/userguide/retrieving-feature-flags.html)
in the I<AppConfig User Guide>.



=head2 B<REQUIRED> ClientId => Str

The clientId parameter in the following command is a unique,
user-specified ID to identify the client for the configuration. This ID
enables AppConfig to deploy the configuration in intervals, as defined
in the deployment strategy.



=head2 B<REQUIRED> Configuration => Str

The configuration to get. Specify either the configuration name or the
configuration ID.



=head2 B<REQUIRED> Environment => Str

The environment to get. Specify either the environment name or the
environment ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguration in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

