
package Paws::IoTManagedIntegrations::GetManagedThingResponse;
  use Moose;
  has ActivatedAt => (is => 'ro', isa => 'Str');
  has AdvertisedProductId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has Brand => (is => 'ro', isa => 'Str');
  has Classification => (is => 'ro', isa => 'Str');
  has ConnectorDeviceId => (is => 'ro', isa => 'Str');
  has ConnectorPolicyId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CredentialLockerId => (is => 'ro', isa => 'Str');
  has DeviceSpecificKey => (is => 'ro', isa => 'Str');
  has HubNetworkMode => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has InternationalArticleNumber => (is => 'ro', isa => 'Str');
  has MacAddress => (is => 'ro', isa => 'Str');
  has MetaData => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::MetaData');
  has Model => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has ParentControllerId => (is => 'ro', isa => 'Str');
  has ProvisioningStatus => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');
  has UniversalProductCode => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingResponse

=head1 ATTRIBUTES


=head2 ActivatedAt => Str

The timestampe value of when the device was activated.


=head2 AdvertisedProductId => Str

The id of the advertised product.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the managed thing.


=head2 Brand => Str

The brand of the device.


=head2 Classification => Str

The classification of the managed thing such as light bulb or
thermostat.


=head2 ConnectorDeviceId => Str

The third-party device id as defined by the connector. This device id
must not contain personal identifiable information (PII).

This parameter is used for cloud-to-cloud devices only.


=head2 ConnectorPolicyId => Str

The id of the connector policy.

This parameter is used for cloud-to-cloud devices only.


=head2 CreatedAt => Str

The timestamp value of when the device creation request occurred.


=head2 CredentialLockerId => Str

The identifier of the credential locker for the managed thing.


=head2 DeviceSpecificKey => Str

A Zwave device-specific key used during device activation.

This parameter is used for Zwave devices only.


=head2 HubNetworkMode => Str

The network mode for the hub-connected device.

Valid values are: C<"STANDARD">, C<"NETWORK_WIDE_EXCLUSION">
=head2 Id => Str

The id of the managed thing.


=head2 InternationalArticleNumber => Str

The unique 13 digit number that identifies the managed thing.


=head2 MacAddress => Str

The media access control (MAC) address for the device represented by
the managed thing.

This parameter is used for Zigbee devices only.


=head2 MetaData => L<Paws::IoTManagedIntegrations::MetaData>

The metadata for the managed thing.


=head2 Model => Str

The model of the device.


=head2 Name => Str

The name of the managed thing representing the physical device.


=head2 Owner => Str

Owner of the device, usually an indication of whom the device belongs
to. This value should not contain personal identifiable information.


=head2 ParentControllerId => Str

Id of the controller device used for the discovery job.


=head2 ProvisioningStatus => Str

The provisioning status of the device in the provisioning workflow for
onboarding to IoT managed integrations.

Valid values are: C<"UNASSOCIATED">, C<"PRE_ASSOCIATED">, C<"DISCOVERED">, C<"ACTIVATED">, C<"DELETION_FAILED">, C<"DELETE_IN_PROGRESS">, C<"ISOLATED">, C<"DELETED">
=head2 Role => Str

The type of device used. This will be the Amazon Web Services hub
controller, cloud device, or IoT device.

Valid values are: C<"CONTROLLER">, C<"DEVICE">
=head2 SerialNumber => Str

The serial number of the device.


=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the managed thing.


=head2 UniversalProductCode => Str

The universal product code (UPC) of the device model. The UPC is
typically used in the United States of America and Canada.


=head2 UpdatedAt => Str

The timestamp value of when the managed thing was last updated at.


=head2 _request_id => Str


=cut

