
package Paws::IoTSiteWise::CreatePortal;
  use Moose;
  has Alarms => (is => 'ro', isa => 'Paws::IoTSiteWise::Alarms', traits => ['NameInRequest'], request_name => 'alarms');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has NotificationSenderEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationSenderEmail');
  has PortalAuthMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalAuthMode');
  has PortalContactEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalContactEmail', required => 1);
  has PortalDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalDescription');
  has PortalLogoImageFile => (is => 'ro', isa => 'Paws::IoTSiteWise::ImageFile', traits => ['NameInRequest'], request_name => 'portalLogoImageFile');
  has PortalName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalName', required => 1);
  has PortalType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalType');
  has PortalTypeConfiguration => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalTypeConfiguration', traits => ['NameInRequest'], request_name => 'portalTypeConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreatePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreatePortal - Arguments for method CreatePortal on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePortal on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreatePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortal.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreatePortalResponse = $iotsitewise->CreatePortal(
      PortalContactEmail => 'MyEmail',
      PortalName         => 'MyName',
      RoleArn            => 'MyIamArn',
      Alarms             => {
        AlarmRoleArn          => 'MyIamArn',    # min: 1, max: 1600
        NotificationLambdaArn => 'MyARN',       # min: 1, max: 1600; OPTIONAL
      },    # OPTIONAL
      ClientToken             => 'MyClientToken',    # OPTIONAL
      NotificationSenderEmail => 'MyEmail',          # OPTIONAL
      PortalAuthMode          => 'IAM',              # OPTIONAL
      PortalDescription       => 'MyDescription',    # OPTIONAL
      PortalLogoImageFile     => {
        Data => 'BlobImageFileData',                 # min: 1, max: 1500000
        Type => 'PNG',                               # values: PNG

      },    # OPTIONAL
      PortalType              => 'SITEWISE_PORTAL_V1',    # OPTIONAL
      PortalTypeConfiguration => {
        'MyPortalTypeKey' => {
          PortalTools => [
            'MyName', ...    # min: 1, max: 256
          ],    # OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PortalArn        = $CreatePortalResponse->PortalArn;
    my $PortalId         = $CreatePortalResponse->PortalId;
    my $PortalStartUrl   = $CreatePortalResponse->PortalStartUrl;
    my $PortalStatus     = $CreatePortalResponse->PortalStatus;
    my $SsoApplicationId = $CreatePortalResponse->SsoApplicationId;

    # Returns a L<Paws::IoTSiteWise::CreatePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreatePortal>

=head1 ATTRIBUTES


=head2 Alarms => L<Paws::IoTSiteWise::Alarms>

Contains the configuration information of an alarm created in an IoT
SiteWise Monitor portal. You can use the alarm to monitor an asset
property and get notified when the asset property value is outside a
specified range. For more information, see Monitoring with alarms
(https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html)
in the I<IoT SiteWise Application Guide>.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 NotificationSenderEmail => Str

The email address that sends alarm notifications.

If you use the IoT Events managed Lambda function
(https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html)
to manage your emails, you must verify the sender email address in
Amazon SES
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html).



=head2 PortalAuthMode => Str

The service to use to authenticate users to the portal. Choose from the
following options:

=over

=item *

C<SSO> E<ndash> The portal uses IAM Identity Center to authenticate
users and manage user permissions. Before you can create a portal that
uses IAM Identity Center, you must enable IAM Identity Center. For more
information, see Enabling IAM Identity Center
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso)
in the I<IoT SiteWise User Guide>. This option is only available in
Amazon Web Services Regions other than the China Regions.

=item *

C<IAM> E<ndash> The portal uses Identity and Access Management to
authenticate users and manage user permissions.

=back

You can't change this value after you create a portal.

Default: C<SSO>

Valid values are: C<"IAM">, C<"SSO">

=head2 B<REQUIRED> PortalContactEmail => Str

The Amazon Web Services administrator's contact email address.



=head2 PortalDescription => Str

A description for the portal.



=head2 PortalLogoImageFile => L<Paws::IoTSiteWise::ImageFile>

A logo image to display in the portal. Upload a square, high-resolution
image. The image is displayed on a dark background.



=head2 B<REQUIRED> PortalName => Str

A friendly name for the portal.



=head2 PortalType => Str

Define the type of portal. The value for IoT SiteWise Monitor (Classic)
is C<SITEWISE_PORTAL_V1>. The value for IoT SiteWise Monitor (AI-aware)
is C<SITEWISE_PORTAL_V2>.

Valid values are: C<"SITEWISE_PORTAL_V1">, C<"SITEWISE_PORTAL_V2">

=head2 PortalTypeConfiguration => L<Paws::IoTSiteWise::PortalTypeConfiguration>

The configuration entry associated with the specific portal type. The
value for IoT SiteWise Monitor (Classic) is C<SITEWISE_PORTAL_V1>. The
value for IoT SiteWise Monitor (AI-aware) is C<SITEWISE_PORTAL_V2>.



=head2 B<REQUIRED> RoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of a service role that allows the portal's users to access your IoT
SiteWise resources on your behalf. For more information, see Using
service roles for IoT SiteWise Monitor
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html)
in the I<IoT SiteWise User Guide>.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the portal. For
more information, see Tagging your IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortal in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

