package Paws::AppConfigData;
  use Moose;
  sub service { 'appconfigdata' }
  sub signing_name { 'appconfig' }
  sub version { '2021-11-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetLatestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfigData::GetLatestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigurationSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfigData::StartConfigurationSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetLatestConfiguration StartConfigurationSession / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfigData - Perl Interface to AWS AWS AppConfig Data

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppConfigData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AppConfig Data provides the data plane APIs your application uses to
retrieve configuration data. Here's how it works:

Your application retrieves configuration data by first establishing a
configuration session using the AppConfig Data
StartConfigurationSession API action. Your session's client then makes
periodic calls to GetLatestConfiguration to check for and retrieve the
latest data available.

When calling C<StartConfigurationSession>, your code sends the
following information:

=over

=item *

Identifiers (ID or name) of an AppConfig application, environment, and
configuration profile that the session tracks.

=item *

(Optional) The minimum amount of time the session's client must wait
between calls to C<GetLatestConfiguration>.

=back

In response, AppConfig provides an C<InitialConfigurationToken> to be
given to the session's client and used the first time it calls
C<GetLatestConfiguration> for that session.

This token should only be used once in your first call to
C<GetLatestConfiguration>. You I<must> use the new token in the
C<GetLatestConfiguration> response (C<NextPollConfigurationToken>) in
each subsequent call to C<GetLatestConfiguration>.

When calling C<GetLatestConfiguration>, your client code sends the most
recent C<ConfigurationToken> value it has and receives in response:

=over

=item *

C<NextPollConfigurationToken>: the C<ConfigurationToken> value to use
on the next call to C<GetLatestConfiguration>.

=item *

C<NextPollIntervalInSeconds>: the duration the client should wait
before making its next call to C<GetLatestConfiguration>. This duration
may vary over the course of the session, so it should be used instead
of the value sent on the C<StartConfigurationSession> call.

=item *

The configuration: the latest data intended for the session. This may
be empty if the client already has the latest version of the
configuration.

=back

The C<InitialConfigurationToken> and C<NextPollConfigurationToken>
should only be used once. To support long poll use cases, the tokens
are valid for up to 24 hours. If a C<GetLatestConfiguration> call uses
an expired token, the system returns C<BadRequestException>.

For more information and to view example CLI commands that show how to
retrieve a configuration using the AppConfig Data
C<StartConfigurationSession> and C<GetLatestConfiguration> API actions,
see Retrieving the configuration
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
in the I<AppConfig User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11>


=head1 METHODS

=head2 GetLatestConfiguration

=over

=item ConfigurationToken => Str


=back

Each argument is described in detail in: L<Paws::AppConfigData::GetLatestConfiguration>

Returns: a L<Paws::AppConfigData::GetLatestConfigurationResponse> instance

Retrieves the latest deployed configuration. This API may return empty
configuration data if the client already has the latest version. For
more information about this API action and to view example CLI commands
that show how to use it with the StartConfigurationSession API action,
see Retrieving the configuration
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
in the I<AppConfig User Guide>.

Note the following important information.

=over

=item *

Each configuration token is only valid for one call to
C<GetLatestConfiguration>. The C<GetLatestConfiguration> response
includes a C<NextPollConfigurationToken> that should always replace the
token used for the just-completed call in preparation for the next one.

=item *

C<GetLatestConfiguration> is a priced call. For more information, see
Pricing (https://aws.amazon.com/systems-manager/pricing/).

=back



=head2 StartConfigurationSession

=over

=item ApplicationIdentifier => Str

=item ConfigurationProfileIdentifier => Str

=item EnvironmentIdentifier => Str

=item [RequiredMinimumPollIntervalInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::AppConfigData::StartConfigurationSession>

Returns: a L<Paws::AppConfigData::StartConfigurationSessionResponse> instance

Starts a configuration session used to retrieve a deployed
configuration. For more information about this API action and to view
example CLI commands that show how to use it with the
GetLatestConfiguration API action, see Retrieving the configuration
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
in the I<AppConfig User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

