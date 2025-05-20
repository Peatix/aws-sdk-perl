
package Paws::MQ::UpdateBroker;
  use Moose;
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');
  has DataReplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataReplicationMode');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType');
  has LdapServerMetadata => (is => 'ro', isa => 'Paws::MQ::LdapServerMetadataInput', traits => ['NameInRequest'], request_name => 'ldapServerMetadata');
  has Logs => (is => 'ro', isa => 'Paws::MQ::Logs', traits => ['NameInRequest'], request_name => 'logs');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::UpdateBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBroker - Arguments for method UpdateBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method UpdateBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $UpdateBrokerResponse = $mq->UpdateBroker(
      BrokerId                => 'My__string',
      AuthenticationStrategy  => 'SIMPLE',       # OPTIONAL
      AutoMinorVersionUpgrade => 1,              # OPTIONAL
      Configuration           => {
        Id       => 'My__string',
        Revision => 1,                           # OPTIONAL
      },    # OPTIONAL
      DataReplicationMode => 'NONE',          # OPTIONAL
      EngineVersion       => 'My__string',    # OPTIONAL
      HostInstanceType    => 'My__string',    # OPTIONAL
      LdapServerMetadata  => {
        Hosts                  => [ 'My__string', ... ],
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
      SecurityGroups => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $AuthenticationStrategy = $UpdateBrokerResponse->AuthenticationStrategy;
    my $AutoMinorVersionUpgrade =
      $UpdateBrokerResponse->AutoMinorVersionUpgrade;
    my $BrokerId      = $UpdateBrokerResponse->BrokerId;
    my $Configuration = $UpdateBrokerResponse->Configuration;
    my $DataReplicationMetadata =
      $UpdateBrokerResponse->DataReplicationMetadata;
    my $DataReplicationMode = $UpdateBrokerResponse->DataReplicationMode;
    my $EngineVersion       = $UpdateBrokerResponse->EngineVersion;
    my $HostInstanceType    = $UpdateBrokerResponse->HostInstanceType;
    my $LdapServerMetadata  = $UpdateBrokerResponse->LdapServerMetadata;
    my $Logs                = $UpdateBrokerResponse->Logs;
    my $MaintenanceWindowStartTime =
      $UpdateBrokerResponse->MaintenanceWindowStartTime;
    my $PendingDataReplicationMetadata =
      $UpdateBrokerResponse->PendingDataReplicationMetadata;
    my $PendingDataReplicationMode =
      $UpdateBrokerResponse->PendingDataReplicationMode;
    my $SecurityGroups = $UpdateBrokerResponse->SecurityGroups;

    # Returns a L<Paws::MQ::UpdateBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/UpdateBroker>

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

Must be set to true for ActiveMQ brokers version 5.18 and above and for
RabbitMQ brokers version 3.13 and above.



=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 Configuration => L<Paws::MQ::ConfigurationId>

A list of information about the configuration.



=head2 DataReplicationMode => Str

Defines whether this broker is a part of a data replication pair.

Valid values are: C<"NONE">, C<"CRDR">

=head2 EngineVersion => Str

The broker engine version. For more information, see the ActiveMQ
version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.

When upgrading to ActiveMQ version 5.18 and above or RabbitMQ version
3.13 and above, you must have autoMinorVersionUpgrade set to true for
the broker.



=head2 HostInstanceType => Str

The broker's host instance type to upgrade to. For a list of supported
instance types, see Broker instance types
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types).



=head2 LdapServerMetadata => L<Paws::MQ::LdapServerMetadataInput>

Optional. The metadata of the LDAP server used to authenticate and
authorize connections to the broker. Does not apply to RabbitMQ
brokers.



=head2 Logs => L<Paws::MQ::Logs>

Enables Amazon CloudWatch logging for brokers.



=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups (1 minimum, 5 maximum) that authorizes
connections to brokers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

