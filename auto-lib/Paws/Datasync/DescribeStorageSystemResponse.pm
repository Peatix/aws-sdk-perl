
package Paws::Datasync::DescribeStorageSystemResponse;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has ConnectivityStatus => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecretsManagerArn => (is => 'ro', isa => 'Str');
  has ServerConfiguration => (is => 'ro', isa => 'Paws::Datasync::DiscoveryServerConfiguration');
  has StorageSystemArn => (is => 'ro', isa => 'Str');
  has SystemType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystemResponse

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The ARN of the DataSync agent that connects to and reads from your
on-premises storage system.


=head2 CloudWatchLogGroupArn => Str

The ARN of the Amazon CloudWatch log group that's used to monitor and
log discovery job events.


=head2 ConnectivityStatus => Str

Indicates whether your DataSync agent can connect to your on-premises
storage system.

Valid values are: C<"PASS">, C<"FAIL">, C<"UNKNOWN">
=head2 CreationTime => Str

The time when you added the on-premises storage system to DataSync
Discovery.


=head2 ErrorMessage => Str

Describes the connectivity error that the DataSync agent is
encountering with your on-premises storage system.


=head2 Name => Str

The name that you gave your on-premises storage system when adding it
to DataSync Discovery.


=head2 SecretsManagerArn => Str

The ARN of the secret that stores your on-premises storage system's
credentials. DataSync Discovery stores these credentials in Secrets
Manager
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-configure-storage.html#discovery-add-storage).


=head2 ServerConfiguration => L<Paws::Datasync::DiscoveryServerConfiguration>

The server name and network port required to connect with your
on-premises storage system's management interface.


=head2 StorageSystemArn => Str

The ARN of the on-premises storage system that the discovery job looked
at.


=head2 SystemType => Str

The type of on-premises storage system.

DataSync Discovery currently only supports NetApp Fabric-Attached
Storage (FAS) and All Flash FAS (AFF) systems running ONTAP 9.7 or
later.

Valid values are: C<"NetAppONTAP">
=head2 _request_id => Str


=cut

1;