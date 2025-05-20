
package Paws::TimestreamInfluxDB::GetDbClusterOutput;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'allocatedStorage' );
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has DbInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbInstanceType' );
  has DbParameterGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbParameterGroupIdentifier' );
  has DbStorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbStorageType' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' );
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint' );
  has FailoverMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failoverMode' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has InfluxAuthParametersSecretArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'influxAuthParametersSecretArn' );
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::LogDeliveryConfiguration', traits => ['NameInRequest'], request_name => 'logDeliveryConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkType' );
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has ReaderEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readerEndpoint' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds' );
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSubnetIds' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::GetDbClusterOutput

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage allocated for your DB storage type (in
gibibytes).


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the DB cluster.


=head2 DbInstanceType => Str

The Timestream for InfluxDB instance type that InfluxDB runs on.

Valid values are: C<"db.influx.medium">, C<"db.influx.large">, C<"db.influx.xlarge">, C<"db.influx.2xlarge">, C<"db.influx.4xlarge">, C<"db.influx.8xlarge">, C<"db.influx.12xlarge">, C<"db.influx.16xlarge">
=head2 DbParameterGroupIdentifier => Str

The ID of the DB parameter group assigned to your DB cluster.


=head2 DbStorageType => Str

The Timestream for InfluxDB DB storage type that InfluxDB stores data
on.

Valid values are: C<"InfluxIOIncludedT1">, C<"InfluxIOIncludedT2">, C<"InfluxIOIncludedT3">
=head2 DeploymentType => Str

Deployment type of the DB cluster.

Valid values are: C<"MULTI_NODE_READ_REPLICAS">
=head2 Endpoint => Str

The endpoint used to connect to the Timestream for InfluxDB cluster for
write and read operations.


=head2 FailoverMode => Str

The configured failover mode for the DB cluster.

Valid values are: C<"AUTOMATIC">, C<"NO_FAILOVER">
=head2 B<REQUIRED> Id => Str

Service-generated unique identifier of the DB cluster to retrieve.


=head2 InfluxAuthParametersSecretArn => Str

The Amazon Resource Name (ARN) of the Secrets Manager secret containing
the initial InfluxDB authorization parameters. The secret value is a
JSON formatted key-value pair holding InfluxDB authorization values:
organization, bucket, username, and password.


=head2 LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>

Configuration for sending InfluxDB engine logs to send to specified S3
bucket.


=head2 B<REQUIRED> Name => Str

Customer-supplied name of the Timestream for InfluxDB cluster.


=head2 NetworkType => Str

Specifies whether the network type of the Timestream for InfluxDB
cluster is IPv4, which can communicate over IPv4 protocol only, or
DUAL, which can communicate over both IPv4 and IPv6 protocols.

Valid values are: C<"IPV4">, C<"DUAL">
=head2 Port => Int

The port number on which InfluxDB accepts connections.


=head2 PubliclyAccessible => Bool

Indicates if the DB cluster has a public IP to facilitate access from
outside the VPC.


=head2 ReaderEndpoint => Str

The endpoint used to connect to the Timestream for InfluxDB cluster for
read-only operations.


=head2 Status => Str

The status of the DB cluster.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"AVAILABLE">, C<"FAILED">, C<"DELETED">
=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security group IDs associated with the DB cluster.


=head2 VpcSubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs associated with the DB cluster.


=head2 _request_id => Str


=cut

1;