
package Paws::MQ::UpdateBrokerResponse;
  use Moose;
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');
  has DataReplicationMetadata => (is => 'ro', isa => 'Paws::MQ::DataReplicationMetadataOutput', traits => ['NameInRequest'], request_name => 'dataReplicationMetadata');
  has DataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataReplicationMode');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType');
  has LdapServerMetadata => (is => 'ro', isa => 'Paws::MQ::LdapServerMetadataOutput', traits => ['NameInRequest'], request_name => 'ldapServerMetadata');
  has Logs => (is => 'ro', isa => 'Paws::MQ::Logs', traits => ['NameInRequest'], request_name => 'logs');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has PendingDataReplicationMetadata => (is => 'ro', isa => 'Paws::MQ::DataReplicationMetadataOutput', traits => ['NameInRequest'], request_name => 'pendingDataReplicationMetadata');
  has PendingDataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingDataReplicationMode');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerResponse

=head1 ATTRIBUTES


=head2 AuthenticationStrategy => Str

Optional. The authentication strategy used to secure the broker. The
default is SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">
=head2 AutoMinorVersionUpgrade => Bool

Enables automatic upgrades to new patch versions for brokers as new
versions are released and supported by Amazon MQ. Automatic upgrades
occur during the scheduled maintenance window or after a manual broker
reboot.


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 Configuration => L<Paws::MQ::ConfigurationId>

The ID of the updated configuration.


=head2 DataReplicationMetadata => L<Paws::MQ::DataReplicationMetadataOutput>

The replication details of the data replication-enabled broker. Only
returned if dataReplicationMode is set to CRDR.


=head2 DataReplicationMode => Str

Describes whether this broker is a part of a data replication pair.

Valid values are: C<"NONE">, C<"CRDR">
=head2 EngineVersion => Str

The broker engine version to upgrade to. For more information, see the
ActiveMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.


=head2 HostInstanceType => Str

The broker's host instance type to upgrade to. For a list of supported
instance types, see Broker instance types
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types).


=head2 LdapServerMetadata => L<Paws::MQ::LdapServerMetadataOutput>

Optional. The metadata of the LDAP server used to authenticate and
authorize connections to the broker. Does not apply to RabbitMQ
brokers.


=head2 Logs => L<Paws::MQ::Logs>

The list of information about logs to be enabled for the specified
broker.


=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.


=head2 PendingDataReplicationMetadata => L<Paws::MQ::DataReplicationMetadataOutput>

The pending replication details of the data replication-enabled broker.
Only returned if pendingDataReplicationMode is set to CRDR.


=head2 PendingDataReplicationMode => Str

Describes whether this broker will be a part of a data replication pair
after reboot.

Valid values are: C<"NONE">, C<"CRDR">
=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups (1 minimum, 5 maximum) that authorizes
connections to brokers.


=head2 _request_id => Str


=cut

