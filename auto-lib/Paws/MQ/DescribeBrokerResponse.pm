
package Paws::MQ::DescribeBrokerResponse;
  use Moose;
  has ActionsRequired => (is => 'ro', isa => 'ArrayRef[Paws::MQ::ActionRequired]', traits => ['NameInRequest'], request_name => 'actionsRequired');
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerArn');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has BrokerInstances => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerInstance]', traits => ['NameInRequest'], request_name => 'brokerInstances');
  has BrokerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerName');
  has BrokerState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerState');
  has Configurations => (is => 'ro', isa => 'Paws::MQ::Configurations', traits => ['NameInRequest'], request_name => 'configurations');
  has Created => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'created');
  has DataReplicationMetadata => (is => 'ro', isa => 'Paws::MQ::DataReplicationMetadataOutput', traits => ['NameInRequest'], request_name => 'dataReplicationMetadata');
  has DataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataReplicationMode');
  has DeploymentMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentMode');
  has EncryptionOptions => (is => 'ro', isa => 'Paws::MQ::EncryptionOptions', traits => ['NameInRequest'], request_name => 'encryptionOptions');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType');
  has LdapServerMetadata => (is => 'ro', isa => 'Paws::MQ::LdapServerMetadataOutput', traits => ['NameInRequest'], request_name => 'ldapServerMetadata');
  has Logs => (is => 'ro', isa => 'Paws::MQ::LogsSummary', traits => ['NameInRequest'], request_name => 'logs');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has PendingAuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingAuthenticationStrategy');
  has PendingDataReplicationMetadata => (is => 'ro', isa => 'Paws::MQ::DataReplicationMetadataOutput', traits => ['NameInRequest'], request_name => 'pendingDataReplicationMetadata');
  has PendingDataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingDataReplicationMode');
  has PendingEngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingEngineVersion');
  has PendingHostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingHostInstanceType');
  has PendingLdapServerMetadata => (is => 'ro', isa => 'Paws::MQ::LdapServerMetadataOutput', traits => ['NameInRequest'], request_name => 'pendingLdapServerMetadata');
  has PendingSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'pendingSecurityGroups');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::UserSummary]', traits => ['NameInRequest'], request_name => 'users');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBrokerResponse

=head1 ATTRIBUTES


=head2 ActionsRequired => ArrayRef[L<Paws::MQ::ActionRequired>]

Actions required for a broker.


=head2 AuthenticationStrategy => Str

The authentication strategy used to secure the broker. The default is
SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">
=head2 AutoMinorVersionUpgrade => Bool

Enables automatic upgrades to new patch versions for brokers as new
versions are released and supported by Amazon MQ. Automatic upgrades
occur during the scheduled maintenance window or after a manual broker
reboot.


=head2 BrokerArn => Str

The broker's Amazon Resource Name (ARN).


=head2 BrokerId => Str

The unique ID that Amazon MQ generates for the broker.


=head2 BrokerInstances => ArrayRef[L<Paws::MQ::BrokerInstance>]

A list of information about allocated brokers.


=head2 BrokerName => Str

The broker's name. This value must be unique in your Amazon Web
Services account account, 1-50 characters long, must contain only
letters, numbers, dashes, and underscores, and must not contain white
spaces, brackets, wildcard characters, or special characters.


=head2 BrokerState => Str

The broker's status.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_FAILED">, C<"DELETION_IN_PROGRESS">, C<"RUNNING">, C<"REBOOT_IN_PROGRESS">, C<"CRITICAL_ACTION_REQUIRED">, C<"REPLICA">
=head2 Configurations => L<Paws::MQ::Configurations>

The list of all revisions for the specified configuration.


=head2 Created => Str

The time when the broker was created.


=head2 DataReplicationMetadata => L<Paws::MQ::DataReplicationMetadataOutput>

The replication details of the data replication-enabled broker. Only
returned if dataReplicationMode is set to CRDR.


=head2 DataReplicationMode => Str

Describes whether this broker is a part of a data replication pair.

Valid values are: C<"NONE">, C<"CRDR">
=head2 DeploymentMode => Str

The broker's deployment mode.

Valid values are: C<"SINGLE_INSTANCE">, C<"ACTIVE_STANDBY_MULTI_AZ">, C<"CLUSTER_MULTI_AZ">
=head2 EncryptionOptions => L<Paws::MQ::EncryptionOptions>

Encryption options for the broker.


=head2 EngineType => Str

The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and
RABBITMQ.

Valid values are: C<"ACTIVEMQ">, C<"RABBITMQ">
=head2 EngineVersion => Str

The broker engine version. For more information, see the ActiveMQ
version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.


=head2 HostInstanceType => Str

The broker's instance type.


=head2 LdapServerMetadata => L<Paws::MQ::LdapServerMetadataOutput>

The metadata of the LDAP server used to authenticate and authorize
connections to the broker.


=head2 Logs => L<Paws::MQ::LogsSummary>

The list of information about logs currently enabled and pending to be
deployed for the specified broker.


=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.


=head2 PendingAuthenticationStrategy => Str

The authentication strategy that will be applied when the broker is
rebooted. The default is SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">
=head2 PendingDataReplicationMetadata => L<Paws::MQ::DataReplicationMetadataOutput>

The pending replication details of the data replication-enabled broker.
Only returned if pendingDataReplicationMode is set to CRDR.


=head2 PendingDataReplicationMode => Str

Describes whether this broker will be a part of a data replication pair
after reboot.

Valid values are: C<"NONE">, C<"CRDR">
=head2 PendingEngineVersion => Str

The broker engine version to upgrade to. For more information, see the
ActiveMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.


=head2 PendingHostInstanceType => Str

The broker's host instance type to upgrade to. For a list of supported
instance types, see Broker instance types
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types).


=head2 PendingLdapServerMetadata => L<Paws::MQ::LdapServerMetadataOutput>

The metadata of the LDAP server that will be used to authenticate and
authorize connections to the broker after it is rebooted.


=head2 PendingSecurityGroups => ArrayRef[Str|Undef]

The list of pending security groups to authorize connections to
brokers.


=head2 PubliclyAccessible => Bool

Enables connections from applications outside of the VPC that hosts the
broker's subnets.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of rules (1 minimum, 125 maximum) that authorize connections
to brokers.


=head2 StorageType => Str

The broker's storage type.

Valid values are: C<"EBS">, C<"EFS">
=head2 SubnetIds => ArrayRef[Str|Undef]

The list of groups that define which subnets and IP ranges the broker
can use from different Availability Zones.


=head2 Tags => L<Paws::MQ::__mapOf__string>

The list of all tags associated with this broker.


=head2 Users => ArrayRef[L<Paws::MQ::UserSummary>]

The list of all broker usernames for the specified broker.


=head2 _request_id => Str


=cut

