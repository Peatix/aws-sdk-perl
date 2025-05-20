
package Paws::TimestreamInfluxDB::CreateDbInstanceOutput;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'allocatedStorage' );
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has DbClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbClusterId' );
  has DbInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbInstanceType' );
  has DbParameterGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbParameterGroupIdentifier' );
  has DbStorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbStorageType' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' );
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has InfluxAuthParametersSecretArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'influxAuthParametersSecretArn' );
  has InstanceMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceMode' );
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::LogDeliveryConfiguration', traits => ['NameInRequest'], request_name => 'logDeliveryConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkType' );
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secondaryAvailabilityZone' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds' );
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSubnetIds' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::CreateDbInstanceOutput

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage allocated for your DB storage type (in
gibibytes).


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the DB instance.


=head2 AvailabilityZone => Str

The Availability Zone in which the DB instance resides.


=head2 DbClusterId => Str

Specifies the DbCluster to which this DbInstance belongs to.


=head2 DbInstanceType => Str

The Timestream for InfluxDB instance type that InfluxDB runs on.

Valid values are: C<"db.influx.medium">, C<"db.influx.large">, C<"db.influx.xlarge">, C<"db.influx.2xlarge">, C<"db.influx.4xlarge">, C<"db.influx.8xlarge">, C<"db.influx.12xlarge">, C<"db.influx.16xlarge">
=head2 DbParameterGroupIdentifier => Str

The id of the DB parameter group assigned to your DB instance.


=head2 DbStorageType => Str

The Timestream for InfluxDB DB storage type that InfluxDB stores data
on.

Valid values are: C<"InfluxIOIncludedT1">, C<"InfluxIOIncludedT2">, C<"InfluxIOIncludedT3">
=head2 DeploymentType => Str

Specifies whether the Timestream for InfluxDB is deployed as Single-AZ
or with a MultiAZ Standby for High availability.

Valid values are: C<"SINGLE_AZ">, C<"WITH_MULTIAZ_STANDBY">
=head2 Endpoint => Str

The endpoint used to connect to InfluxDB. The default InfluxDB port is
8086.


=head2 B<REQUIRED> Id => Str

A service-generated unique identifier.


=head2 InfluxAuthParametersSecretArn => Str

The Amazon Resource Name (ARN) of the Secrets Manager secret containing
the initial InfluxDB authorization parameters. The secret value is a
JSON formatted key-value pair holding InfluxDB authorization values:
organization, bucket, username, and password.


=head2 InstanceMode => Str

Specifies the DbInstance's role in the cluster.

Valid values are: C<"PRIMARY">, C<"STANDBY">, C<"REPLICA">
=head2 LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>

Configuration for sending InfluxDB engine logs to send to specified S3
bucket.


=head2 B<REQUIRED> Name => Str

The customer-supplied name that uniquely identifies the DB instance
when interacting with the Amazon Timestream for InfluxDB API and CLI
commands.


=head2 NetworkType => Str

Specifies whether the networkType of the Timestream for InfluxDB
instance is IPV4, which can communicate over IPv4 protocol only, or
DUAL, which can communicate over both IPv4 and IPv6 protocols.

Valid values are: C<"IPV4">, C<"DUAL">
=head2 Port => Int

The port number on which InfluxDB accepts connections. The default
value is 8086.


=head2 PubliclyAccessible => Bool

Indicates if the DB instance has a public IP to facilitate access.


=head2 SecondaryAvailabilityZone => Str

The Availability Zone in which the standby instance is located when
deploying with a MultiAZ standby instance.


=head2 Status => Str

The status of the DB instance.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"MODIFYING">, C<"UPDATING">, C<"DELETED">, C<"FAILED">, C<"UPDATING_DEPLOYMENT_TYPE">, C<"UPDATING_INSTANCE_TYPE">
=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security group IDs associated with the DB instance.


=head2 B<REQUIRED> VpcSubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs associated with the DB instance.


=head2 _request_id => Str


=cut

1;