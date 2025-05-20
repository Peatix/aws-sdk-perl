
package Paws::AppConfigData::StartConfigurationSession;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationProfileIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RequiredMinimumPollIntervalInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConfigurationSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationsessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfigData::StartConfigurationSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfigData::StartConfigurationSession - Arguments for method StartConfigurationSession on L<Paws::AppConfigData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConfigurationSession on the
L<AWS AppConfig Data|Paws::AppConfigData> service. Use the attributes of this class
as arguments to method StartConfigurationSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConfigurationSession.

=head1 SYNOPSIS

    my $appconfigdata = Paws->service('AppConfigData');
    my $StartConfigurationSessionResponse =
      $appconfigdata->StartConfigurationSession(
      ApplicationIdentifier                => 'MyIdentifier',
      ConfigurationProfileIdentifier       => 'MyIdentifier',
      EnvironmentIdentifier                => 'MyIdentifier',
      RequiredMinimumPollIntervalInSeconds => 1,                # OPTIONAL
      );

    # Results:
    my $InitialConfigurationToken =
      $StartConfigurationSessionResponse->InitialConfigurationToken;

   # Returns a L<Paws::AppConfigData::StartConfigurationSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfigdata/StartConfigurationSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The application ID or the application name.



=head2 B<REQUIRED> ConfigurationProfileIdentifier => Str

The configuration profile ID or the configuration profile name.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The environment ID or the environment name.



=head2 RequiredMinimumPollIntervalInSeconds => Int

Sets a constraint on a session. If you specify a value of, for example,
60 seconds, then the client that established the session can't call
GetLatestConfiguration more frequently than every 60 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConfigurationSession in L<Paws::AppConfigData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

