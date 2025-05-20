
package Paws::AppConfigData::GetLatestConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has NextPollConfigurationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Next-Poll-Configuration-Token');
  has NextPollIntervalInSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Next-Poll-Interval-In-Seconds');
  has VersionLabel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Version-Label');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Configuration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfigData::GetLatestConfigurationResponse

=head1 ATTRIBUTES


=head2 Configuration => Str

The data of the configuration. This may be empty if the client already
has the latest version of configuration.


=head2 ContentType => Str

A standard MIME type describing the format of the configuration
content.


=head2 NextPollConfigurationToken => Str

The latest token describing the current state of the configuration
session. This I<must> be provided to the next call to
C<GetLatestConfiguration.>

This token should only be used once. To support long poll use cases,
the token is valid for up to 24 hours. If a C<GetLatestConfiguration>
call uses an expired token, the system returns C<BadRequestException>.


=head2 NextPollIntervalInSeconds => Int

The amount of time the client should wait before polling for
configuration updates again. Use
C<RequiredMinimumPollIntervalInSeconds> to set the desired poll
interval.


=head2 VersionLabel => Str

The user-defined label for the AppConfig hosted configuration version.
This attribute doesn't apply if the configuration is not from an
AppConfig hosted configuration version. If the client already has the
latest version of the configuration data, this value is empty.


=head2 _request_id => Str


=cut

