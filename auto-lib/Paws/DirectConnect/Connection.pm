
package Paws::DirectConnect::Connection;
  use Moose;
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDevice' );
  has AwsDeviceV2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDeviceV2' );
  has AwsLogicalDeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsLogicalDeviceId' );
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' );
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionState' );
  has EncryptionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionMode' );
  has HasLogicalRedundancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hasLogicalRedundancy' );
  has JumboFrameCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'jumboFrameCapable' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has LoaIssueTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaIssueTime' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has MacSecCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'macSecCapable' );
  has MacSecKeys => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::MacSecKey]', traits => ['NameInRequest'], request_name => 'macSecKeys' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has PartnerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnerName' );
  has PortEncryptionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portEncryptionStatus' );
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerName' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connection

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint that terminates the physical connection.


=head2 AwsLogicalDeviceId => Str

The Direct Connect endpoint that terminates the logical connection.
This device might be different than the device that terminates the
physical connection.


=head2 Bandwidth => Str

The bandwidth of the connection.


=head2 ConnectionId => Str

The ID of the connection.


=head2 ConnectionName => Str

The name of the connection.


=head2 ConnectionState => Str

The state of the connection. The following are the possible values:

=over

=item *

C<ordering>: The initial state of a hosted connection provisioned on an
interconnect. The connection stays in the ordering state until the
owner of the hosted connection confirms or declines the connection
order.

=item *

C<requested>: The initial state of a standard connection. The
connection stays in the requested state until the Letter of
Authorization (LOA) is sent to the customer.

=item *

C<pending>: The connection has been approved and is being initialized.

=item *

C<available>: The network link is up and the connection is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The connection is being deleted.

=item *

C<deleted>: The connection has been deleted.

=item *

C<rejected>: A hosted connection in the C<ordering> state enters the
C<rejected> state if it is deleted by the customer.

=item *

C<unknown>: The state of the connection is not available.

=back


Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">, C<"unknown">
=head2 EncryptionMode => Str

The MAC Security (MACsec) connection encryption mode.

The valid values are C<no_encrypt>, C<should_encrypt>, and
C<must_encrypt>.


=head2 HasLogicalRedundancy => Str

Indicates whether the connection supports a secondary BGP peer in the
same address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LoaIssueTime => Str

The time of the most recent call to DescribeLoa for this connection.


=head2 Location => Str

The location of the connection.


=head2 MacSecCapable => Bool

Indicates whether the connection supports MAC Security (MACsec).


=head2 MacSecKeys => ArrayRef[L<Paws::DirectConnect::MacSecKey>]

The MAC Security (MACsec) security keys associated with the connection.


=head2 OwnerAccount => Str

The ID of the Amazon Web Services account that owns the connection.


=head2 PartnerName => Str

The name of the Direct Connect service provider associated with the
connection.


=head2 PortEncryptionStatus => Str

The MAC Security (MACsec) port link status of the connection.

The valid values are C<Encryption Up>, which means that there is an
active Connection Key Name, or C<Encryption Down>.


=head2 ProviderName => Str

The name of the service provider associated with the connection.


=head2 Region => Str

The Amazon Web Services Region where the connection is located.


=head2 Tags => ArrayRef[L<Paws::DirectConnect::Tag>]

The tags associated with the connection.


=head2 Vlan => Int

The ID of the VLAN.


=head2 _request_id => Str


=cut

1;