
package Paws::WorkSpacesWeb::UpdateUserSettings;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CookieSynchronizationConfiguration => (is => 'ro', isa => 'Paws::WorkSpacesWeb::CookieSynchronizationConfiguration', traits => ['NameInRequest'], request_name => 'cookieSynchronizationConfiguration');
  has CopyAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'copyAllowed');
  has DeepLinkAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deepLinkAllowed');
  has DisconnectTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'disconnectTimeoutInMinutes');
  has DownloadAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadAllowed');
  has IdleDisconnectTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleDisconnectTimeoutInMinutes');
  has PasteAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pasteAllowed');
  has PrintAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'printAllowed');
  has ToolbarConfiguration => (is => 'ro', isa => 'Paws::WorkSpacesWeb::ToolbarConfiguration', traits => ['NameInRequest'], request_name => 'toolbarConfiguration');
  has UploadAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadAllowed');
  has UserSettingsArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userSettingsArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/userSettings/{userSettingsArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::UpdateUserSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateUserSettings - Arguments for method UpdateUserSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method UpdateUserSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $UpdateUserSettingsResponse = $workspaces -web->UpdateUserSettings(
      UserSettingsArn                    => 'MyARN',
      ClientToken                        => 'MyClientToken',    # OPTIONAL
      CookieSynchronizationConfiguration => {
        Allowlist => [
          {
            Domain => 'MyCookieDomain',    # max: 253
            Name   => 'MyCookieName',      # max: 4096; OPTIONAL
            Path   => 'MyCookiePath',      # max: 2000; OPTIONAL
          },
          ...
        ],    # max: 10
        Blocklist => [
          {
            Domain => 'MyCookieDomain',    # max: 253
            Name   => 'MyCookieName',      # max: 4096; OPTIONAL
            Path   => 'MyCookiePath',      # max: 2000; OPTIONAL
          },
          ...
        ],    # max: 10
      },    # OPTIONAL
      CopyAllowed                    => 'Disabled',    # OPTIONAL
      DeepLinkAllowed                => 'Disabled',    # OPTIONAL
      DisconnectTimeoutInMinutes     => 1,             # OPTIONAL
      DownloadAllowed                => 'Disabled',    # OPTIONAL
      IdleDisconnectTimeoutInMinutes => 1,             # OPTIONAL
      PasteAllowed                   => 'Disabled',    # OPTIONAL
      PrintAllowed                   => 'Disabled',    # OPTIONAL
      ToolbarConfiguration           => {
        HiddenToolbarItems => [
          'Windows',
          ...    # values: Windows, DualMonitor, FullScreen, Webcam, Microphone
        ],    # OPTIONAL
        MaxDisplayResolution => 'size4096X2160'
        , # values: size4096X2160, size3840X2160, size3440X1440, size2560X1440, size1920X1080, size1280X720, size1024X768, size800X600; OPTIONAL
        ToolbarType => 'Floating',    # values: Floating, Docked; OPTIONAL
        VisualMode  => 'Dark',        # values: Dark, Light; OPTIONAL
      },    # OPTIONAL
      UploadAllowed => 'Disabled',    # OPTIONAL
    );

    # Results:
    my $UserSettings = $UpdateUserSettingsResponse->UserSettings;

    # Returns a L<Paws::WorkSpacesWeb::UpdateUserSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/UpdateUserSettings>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, subsequent retries with the same client
token return the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.



=head2 CookieSynchronizationConfiguration => L<Paws::WorkSpacesWeb::CookieSynchronizationConfiguration>

The configuration that specifies which cookies should be synchronized
from the end user's local browser to the remote browser.

If the allowlist and blocklist are empty, the configuration becomes
null.



=head2 CopyAllowed => Str

Specifies whether the user can copy text from the streaming session to
the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 DeepLinkAllowed => Str

Specifies whether the user can use deep links that open automatically
when connecting to a session.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 DisconnectTimeoutInMinutes => Int

The amount of time that a streaming session remains active after users
disconnect.



=head2 DownloadAllowed => Str

Specifies whether the user can download files from the streaming
session to the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 IdleDisconnectTimeoutInMinutes => Int

The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the disconnect timeout
interval begins.



=head2 PasteAllowed => Str

Specifies whether the user can paste text from the local device to the
streaming session.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 PrintAllowed => Str

Specifies whether the user can print to the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 ToolbarConfiguration => L<Paws::WorkSpacesWeb::ToolbarConfiguration>

The configuration of the toolbar. This allows administrators to select
the toolbar type and visual mode, set maximum display resolution for
sessions, and choose which items are visible to end users during their
sessions. If administrators do not modify these settings, end users
retain control over their toolbar preferences.



=head2 UploadAllowed => Str

Specifies whether the user can upload files from the local device to
the streaming session.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 B<REQUIRED> UserSettingsArn => Str

The ARN of the user settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

