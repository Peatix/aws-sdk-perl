
package Paws::IoTSiteWise::DescribePortalResponse;
  use Moose;
  has Alarms => (is => 'ro', isa => 'Paws::IoTSiteWise::Alarms', traits => ['NameInRequest'], request_name => 'alarms');
  has NotificationSenderEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationSenderEmail');
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);
  has PortalAuthMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalAuthMode');
  has PortalClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalClientId', required => 1);
  has PortalContactEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalContactEmail', required => 1);
  has PortalCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalCreationDate', required => 1);
  has PortalDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalDescription');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalId', required => 1);
  has PortalLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalLastUpdateDate', required => 1);
  has PortalLogoImageLocation => (is => 'ro', isa => 'Paws::IoTSiteWise::ImageLocation', traits => ['NameInRequest'], request_name => 'portalLogoImageLocation');
  has PortalName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalName', required => 1);
  has PortalStartUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalStartUrl', required => 1);
  has PortalStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalStatus', traits => ['NameInRequest'], request_name => 'portalStatus', required => 1);
  has PortalType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalType');
  has PortalTypeConfiguration => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalTypeConfiguration', traits => ['NameInRequest'], request_name => 'portalTypeConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribePortalResponse

=head1 ATTRIBUTES


=head2 Alarms => L<Paws::IoTSiteWise::Alarms>

Contains the configuration information of an alarm created in an IoT
SiteWise Monitor portal.


=head2 NotificationSenderEmail => Str

The email address that sends alarm notifications.


=head2 B<REQUIRED> PortalArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the portal, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}>


=head2 PortalAuthMode => Str

The service to use to authenticate users to the portal.

Valid values are: C<"IAM">, C<"SSO">
=head2 B<REQUIRED> PortalClientId => Str

The IAM Identity Center application generated client ID (used with IAM
Identity Center API operations). IoT SiteWise includes
C<portalClientId> for only portals that use IAM Identity Center to
authenticate users.


=head2 B<REQUIRED> PortalContactEmail => Str

The Amazon Web Services administrator's contact email address.


=head2 B<REQUIRED> PortalCreationDate => Str

The date the portal was created, in Unix epoch time.


=head2 PortalDescription => Str

The portal's description.


=head2 B<REQUIRED> PortalId => Str

The ID of the portal.


=head2 B<REQUIRED> PortalLastUpdateDate => Str

The date the portal was last updated, in Unix epoch time.


=head2 PortalLogoImageLocation => L<Paws::IoTSiteWise::ImageLocation>

The portal's logo image, which is available at a URL.


=head2 B<REQUIRED> PortalName => Str

The name of the portal.


=head2 B<REQUIRED> PortalStartUrl => Str

The URL for the IoT SiteWise Monitor portal. You can use this URL to
access portals that use IAM Identity Center for authentication. For
portals that use IAM for authentication, you must use the IoT SiteWise
console to get a URL that you can use to access the portal.


=head2 B<REQUIRED> PortalStatus => L<Paws::IoTSiteWise::PortalStatus>

The current status of the portal, which contains a state and any error
message.


=head2 PortalType => Str

Define the type of portal. The value for IoT SiteWise Monitor (Classic)
is C<SITEWISE_PORTAL_V1>. The value for IoT SiteWise Monitor (AI-aware)
is C<SITEWISE_PORTAL_V2>.

Valid values are: C<"SITEWISE_PORTAL_V1">, C<"SITEWISE_PORTAL_V2">
=head2 PortalTypeConfiguration => L<Paws::IoTSiteWise::PortalTypeConfiguration>

The configuration entry associated with the specific portal type. The
value for IoT SiteWise Monitor (Classic) is C<SITEWISE_PORTAL_V1>. The
value for IoT SiteWise Monitor (AI-aware) is C<SITEWISE_PORTAL_V2>.


=head2 RoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the service role that allows the portal's users to access your IoT
SiteWise resources on your behalf. For more information, see Using
service roles for IoT SiteWise Monitor
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html)
in the I<IoT SiteWise User Guide>.


=head2 _request_id => Str


=cut

