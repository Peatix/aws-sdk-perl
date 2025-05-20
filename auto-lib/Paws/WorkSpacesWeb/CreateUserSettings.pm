
package Paws::WorkSpacesWeb::CreateUserSettings;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::WorkSpacesWeb::EncryptionContextMap', traits => ['NameInRequest'], request_name => 'additionalEncryptionContext');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CookieSynchronizationConfiguration => (is => 'ro', isa => 'Paws::WorkSpacesWeb::CookieSynchronizationConfiguration', traits => ['NameInRequest'], request_name => 'cookieSynchronizationConfiguration');
  has CopyAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'copyAllowed', required => 1);
  has CustomerManagedKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerManagedKey');
  has DeepLinkAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deepLinkAllowed');
  has DisconnectTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'disconnectTimeoutInMinutes');
  has DownloadAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadAllowed', required => 1);
  has IdleDisconnectTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleDisconnectTimeoutInMinutes');
  has PasteAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pasteAllowed', required => 1);
  has PrintAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'printAllowed', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has ToolbarConfiguration => (is => 'ro', isa => 'Paws::WorkSpacesWeb::ToolbarConfiguration', traits => ['NameInRequest'], request_name => 'toolbarConfiguration');
  has UploadAllowed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadAllowed', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/userSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::CreateUserSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateUserSettings - Arguments for method CreateUserSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method CreateUserSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $CreateUserSettingsResponse = $workspaces -web->CreateUserSettings(
      CopyAllowed                 => 'Disabled',
      DownloadAllowed             => 'Disabled',
      PasteAllowed                => 'Disabled',
      PrintAllowed                => 'Disabled',
      UploadAllowed               => 'Disabled',
      AdditionalEncryptionContext => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
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
      CustomerManagedKey             => 'MykeyArn',    # OPTIONAL
      DeepLinkAllowed                => 'Disabled',    # OPTIONAL
      DisconnectTimeoutInMinutes     => 1,             # OPTIONAL
      IdleDisconnectTimeoutInMinutes => 1,             # OPTIONAL
      Tags                           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ToolbarConfiguration => {
        HiddenToolbarItems => [
          'Windows',
          ...    # values: Windows, DualMonitor, FullScreen, Webcam, Microphone
        ],    # OPTIONAL
        MaxDisplayResolution => 'size4096X2160'
        , # values: size4096X2160, size3840X2160, size3440X1440, size2560X1440, size1920X1080, size1280X720, size1024X768, size800X600; OPTIONAL
        ToolbarType => 'Floating',    # values: Floating, Docked; OPTIONAL
        VisualMode  => 'Dark',        # values: Dark, Light; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $UserSettingsArn = $CreateUserSettingsResponse->UserSettingsArn;

    # Returns a L<Paws::WorkSpacesWeb::CreateUserSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/CreateUserSettings>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>

The additional encryption context of the user settings.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, subsequent retries with the same client
token returns the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.



=head2 CookieSynchronizationConfiguration => L<Paws::WorkSpacesWeb::CookieSynchronizationConfiguration>

The configuration that specifies which cookies should be synchronized
from the end user's local browser to the remote browser.



=head2 B<REQUIRED> CopyAllowed => Str

Specifies whether the user can copy text from the streaming session to
the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 CustomerManagedKey => Str

The customer managed key used to encrypt sensitive information in the
user settings.



=head2 DeepLinkAllowed => Str

Specifies whether the user can use deep links that open automatically
when connecting to a session.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 DisconnectTimeoutInMinutes => Int

The amount of time that a streaming session remains active after users
disconnect.



=head2 B<REQUIRED> DownloadAllowed => Str

Specifies whether the user can download files from the streaming
session to the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 IdleDisconnectTimeoutInMinutes => Int

The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the disconnect timeout
interval begins.



=head2 B<REQUIRED> PasteAllowed => Str

Specifies whether the user can paste text from the local device to the
streaming session.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 B<REQUIRED> PrintAllowed => Str

Specifies whether the user can print to the local device.

Valid values are: C<"Disabled">, C<"Enabled">

=head2 Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]

The tags to add to the user settings resource. A tag is a key-value
pair.



=head2 ToolbarConfiguration => L<Paws::WorkSpacesWeb::ToolbarConfiguration>

The configuration of the toolbar. This allows administrators to select
the toolbar type and visual mode, set maximum display resolution for
sessions, and choose which items are visible to end users during their
sessions. If administrators do not modify these settings, end users
retain control over their toolbar preferences.



=head2 B<REQUIRED> UploadAllowed => Str

Specifies whether the user can upload files from the local device to
the streaming session.

Valid values are: C<"Disabled">, C<"Enabled">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

