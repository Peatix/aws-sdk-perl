
package Paws::MQ::CreateBroker;
  use Moose;
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerName', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');
  has CreatorRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorRequestId');
  has DataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataReplicationMode');
  has DataReplicationPrimaryBrokerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataReplicationPrimaryBrokerArn');
  has DeploymentMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentMode', required => 1);
  has EncryptionOptions => (is => 'ro', isa => 'Paws::MQ::EncryptionOptions', traits => ['NameInRequest'], request_name => 'encryptionOptions');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType', required => 1);
  has LdapServerMetadata => (is => 'ro', isa => 'Paws::MQ::LdapServerMetadataInput', traits => ['NameInRequest'], request_name => 'ldapServerMetadata');
  has Logs => (is => 'ro', isa => 'Paws::MQ::Logs', traits => ['NameInRequest'], request_name => 'logs');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::User]', traits => ['NameInRequest'], request_name => 'users', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::CreateBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateBroker - Arguments for method CreateBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method CreateBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $CreateBrokerResponse = $mq->CreateBroker(
      BrokerName         => 'My__string',
      DeploymentMode     => 'SINGLE_INSTANCE',
      EngineType         => 'ACTIVEMQ',
      HostInstanceType   => 'My__string',
      PubliclyAccessible => 1,
      Users              => [
        {
          Password        => 'My__string',
          Username        => 'My__string',
          ConsoleAccess   => 1,
          Groups          => [ 'My__string', ... ],    # OPTIONAL
          ReplicationUser => 1,
        },
        ...
      ],
      AuthenticationStrategy  => 'SIMPLE',    # OPTIONAL
      AutoMinorVersionUpgrade => 1,           # OPTIONAL
      Configuration           => {
        Id       => 'My__string',
        Revision => 1,                        # OPTIONAL
      },    # OPTIONAL
      CreatorRequestId                => 'My__string',    # OPTIONAL
      DataReplicationMode             => 'NONE',          # OPTIONAL
      DataReplicationPrimaryBrokerArn => 'My__string',    # OPTIONAL
      EncryptionOptions               => {
        UseAwsOwnedKey => 1,
        KmsKeyId       => 'My__string',
      },                                                  # OPTIONAL
      EngineVersion      => 'My__string',                 # OPTIONAL
      LdapServerMetadata => {
        Hosts                  => [ 'My__string', ... ],    # OPTIONAL
        RoleBase               => 'My__string',
        RoleSearchMatching     => 'My__string',
        ServiceAccountPassword => 'My__string',
        ServiceAccountUsername => 'My__string',
        UserBase               => 'My__string',
        UserSearchMatching     => 'My__string',
        RoleName               => 'My__string',
        RoleSearchSubtree      => 1,
        UserRoleName           => 'My__string',
        UserSearchSubtree      => 1,
      },    # OPTIONAL
      Logs => {
        Audit   => 1,
        General => 1,
      },    # OPTIONAL
      MaintenanceWindowStartTime => {
        DayOfWeek => 'MONDAY'
        , # values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
        TimeOfDay => 'My__string',
        TimeZone  => 'My__string',
      },    # OPTIONAL
      SecurityGroups => [ 'My__string', ... ],                # OPTIONAL
      StorageType    => 'EBS',                                # OPTIONAL
      SubnetIds      => [ 'My__string', ... ],                # OPTIONAL
      Tags           => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $BrokerArn = $CreateBrokerResponse->BrokerArn;
    my $BrokerId  = $CreateBrokerResponse->BrokerId;

    # Returns a L<Paws::MQ::CreateBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/CreateBroker>

=head1 ATTRIBUTES


=head2 AuthenticationStrategy => Str

Optional. The authentication strategy used to secure the broker. The
default is SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">

=head2 AutoMinorVersionUpgrade => Bool

Enables automatic upgrades to new patch versions for brokers as new
versions are released and supported by Amazon MQ. Automatic upgrades
occur during the scheduled maintenance window or after a manual broker
reboot. Set to true by default, if no value is specified.

Must be set to true for ActiveMQ brokers version 5.18 and above and for
RabbitMQ brokers version 3.13 and above.



=head2 B<REQUIRED> BrokerName => Str

Required. The broker's name. This value must be unique in your Amazon
Web Services account, 1-50 characters long, must contain only letters,
numbers, dashes, and underscores, and must not contain white spaces,
brackets, wildcard characters, or special characters.

Do not add personally identifiable information (PII) or other
confidential or sensitive information in broker names. Broker names are
accessible to other Amazon Web Services services, including CloudWatch
Logs. Broker names are not intended to be used for private or sensitive
data.



=head2 Configuration => L<Paws::MQ::ConfigurationId>

A list of information about the configuration.



=head2 CreatorRequestId => Str

The unique ID that the requester receives for the created broker.
Amazon MQ passes your ID with the API action.

We recommend using a Universally Unique Identifier (UUID) for the
creatorRequestId. You may omit the creatorRequestId if your application
doesn't require idempotency.



=head2 DataReplicationMode => Str

Defines whether this broker is a part of a data replication pair.

Valid values are: C<"NONE">, C<"CRDR">

=head2 DataReplicationPrimaryBrokerArn => Str

The Amazon Resource Name (ARN) of the primary broker that is used to
replicate data from in a data replication pair, and is applied to the
replica broker. Must be set when dataReplicationMode is set to CRDR.



=head2 B<REQUIRED> DeploymentMode => Str

Required. The broker's deployment mode.

Valid values are: C<"SINGLE_INSTANCE">, C<"ACTIVE_STANDBY_MULTI_AZ">, C<"CLUSTER_MULTI_AZ">

=head2 EncryptionOptions => L<Paws::MQ::EncryptionOptions>

Encryption options for the broker.



=head2 B<REQUIRED> EngineType => Str

Required. The type of broker engine. Currently, Amazon MQ supports
ACTIVEMQ and RABBITMQ.

Valid values are: C<"ACTIVEMQ">, C<"RABBITMQ">

=head2 EngineVersion => Str

The broker engine version. Defaults to the latest available version for
the specified broker engine type. For more information, see the
ActiveMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.



=head2 B<REQUIRED> HostInstanceType => Str

Required. The broker's instance type.



=head2 LdapServerMetadata => L<Paws::MQ::LdapServerMetadataInput>

Optional. The metadata of the LDAP server used to authenticate and
authorize connections to the broker. Does not apply to RabbitMQ
brokers.



=head2 Logs => L<Paws::MQ::Logs>

Enables Amazon CloudWatch logging for brokers.



=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.



=head2 B<REQUIRED> PubliclyAccessible => Bool

Enables connections from applications outside of the VPC that hosts the
broker's subnets. Set to false by default, if no value is provided.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of rules (1 minimum, 125 maximum) that authorize connections
to brokers.



=head2 StorageType => Str

The broker's storage type.

Valid values are: C<"EBS">, C<"EFS">

=head2 SubnetIds => ArrayRef[Str|Undef]

The list of groups that define which subnets and IP ranges the broker
can use from different Availability Zones. If you specify more than one
subnet, the subnets must be in different Availability Zones. Amazon MQ
will not be able to create VPC endpoints for your broker with multiple
subnets in the same Availability Zone. A SINGLE_INSTANCE deployment
requires one subnet (for example, the default subnet). An
ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two
subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no
subnet requirements when deployed with public accessibility. Deployment
without public accessibility requires at least one subnet.

If you specify subnets in a shared VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html) for
a RabbitMQ broker, the associated VPC to which the specified subnets
belong must be owned by your Amazon Web Services account. Amazon MQ
will not be able to create VPC endpoints in VPCs that are not owned by
your Amazon Web Services account.



=head2 Tags => L<Paws::MQ::__mapOf__string>

Create tags when creating the broker.



=head2 B<REQUIRED> Users => ArrayRef[L<Paws::MQ::User>]

The list of broker users (persons or applications) who can access
queues and topics. For Amazon MQ for RabbitMQ brokers, one and only one
administrative user is accepted and created when a broker is first
provisioned. All subsequent broker users are created by making RabbitMQ
API calls directly to brokers or via the RabbitMQ web console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

