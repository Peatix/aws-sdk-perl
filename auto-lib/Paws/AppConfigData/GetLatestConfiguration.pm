
package Paws::AppConfigData::GetLatestConfiguration;
  use Moose;
  has ConfigurationToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'configuration_token', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLatestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfigData::GetLatestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfigData::GetLatestConfiguration - Arguments for method GetLatestConfiguration on L<Paws::AppConfigData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLatestConfiguration on the
L<AWS AppConfig Data|Paws::AppConfigData> service. Use the attributes of this class
as arguments to method GetLatestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLatestConfiguration.

=head1 SYNOPSIS

    my $appconfigdata = Paws->service('AppConfigData');
    my $GetLatestConfigurationResponse = $appconfigdata->GetLatestConfiguration(
      ConfigurationToken => 'MyToken',

    );

    # Results:
    my $Configuration = $GetLatestConfigurationResponse->Configuration;
    my $ContentType   = $GetLatestConfigurationResponse->ContentType;
    my $NextPollConfigurationToken =
      $GetLatestConfigurationResponse->NextPollConfigurationToken;
    my $NextPollIntervalInSeconds =
      $GetLatestConfigurationResponse->NextPollIntervalInSeconds;
    my $VersionLabel = $GetLatestConfigurationResponse->VersionLabel;

    # Returns a L<Paws::AppConfigData::GetLatestConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfigdata/GetLatestConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationToken => Str

Token describing the current state of the configuration session. To
obtain a token, first call the StartConfigurationSession API. Note that
every call to C<GetLatestConfiguration> will return a new
C<ConfigurationToken> (C<NextPollConfigurationToken> in the response)
and I<must> be provided to subsequent C<GetLatestConfiguration> API
calls.

This token should only be used once. To support long poll use cases,
the token is valid for up to 24 hours. If a C<GetLatestConfiguration>
call uses an expired token, the system returns C<BadRequestException>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLatestConfiguration in L<Paws::AppConfigData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

