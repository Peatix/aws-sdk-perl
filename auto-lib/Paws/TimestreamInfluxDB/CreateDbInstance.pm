
package Paws::TimestreamInfluxDB::CreateDbInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'allocatedStorage' , required => 1);
  has Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucket' );
  has DbInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbInstanceType' , required => 1);
  has DbParameterGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbParameterGroupIdentifier' );
  has DbStorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbStorageType' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' );
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::LogDeliveryConfiguration', traits => ['NameInRequest'], request_name => 'logDeliveryConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkType' );
  has Organization => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organization' );
  has Password => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'password' , required => 1);
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has Tags => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::RequestTagMap', traits => ['NameInRequest'], request_name => 'tags' );
  has Username => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'username' );
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds' , required => 1);
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSubnetIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::CreateDbInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::CreateDbInstance - Arguments for method CreateDbInstance on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDbInstance on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method CreateDbInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDbInstance.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $CreateDbInstanceOutput = $timestream -influxdb->CreateDbInstance(
      AllocatedStorage    => 1,
      DbInstanceType      => 'db.influx.medium',
      Name                => 'MyDbInstanceName',
      Password            => 'MyPassword',
      VpcSecurityGroupIds => [
        'MyVpcSecurityGroupId', ...    # max: 64
      ],
      VpcSubnetIds => [
        'MyVpcSubnetId', ...           # max: 64
      ],
      Bucket                     => 'MyBucket',                       # OPTIONAL
      DbParameterGroupIdentifier => 'MyDbParameterGroupIdentifier',   # OPTIONAL
      DbStorageType              => 'InfluxIOIncludedT1',             # OPTIONAL
      DeploymentType             => 'SINGLE_AZ',                      # OPTIONAL
      LogDeliveryConfiguration   => {
        S3Configuration => {
          BucketName => 'MyS3ConfigurationBucketNameString',   # min: 3, max: 63
          Enabled    => 1,

        },

      },    # OPTIONAL
      NetworkType        => 'IPV4',              # OPTIONAL
      Organization       => 'MyOrganization',    # OPTIONAL
      Port               => 1,                   # OPTIONAL
      PubliclyAccessible => 1,                   # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Username => 'MyUsername',    # OPTIONAL
    );

    # Results:
    my $AllocatedStorage = $CreateDbInstanceOutput->AllocatedStorage;
    my $Arn              = $CreateDbInstanceOutput->Arn;
    my $AvailabilityZone = $CreateDbInstanceOutput->AvailabilityZone;
    my $DbClusterId      = $CreateDbInstanceOutput->DbClusterId;
    my $DbInstanceType   = $CreateDbInstanceOutput->DbInstanceType;
    my $DbParameterGroupIdentifier =
      $CreateDbInstanceOutput->DbParameterGroupIdentifier;
    my $DbStorageType  = $CreateDbInstanceOutput->DbStorageType;
    my $DeploymentType = $CreateDbInstanceOutput->DeploymentType;
    my $Endpoint       = $CreateDbInstanceOutput->Endpoint;
    my $Id             = $CreateDbInstanceOutput->Id;
    my $InfluxAuthParametersSecretArn =
      $CreateDbInstanceOutput->InfluxAuthParametersSecretArn;
    my $InstanceMode = $CreateDbInstanceOutput->InstanceMode;
    my $LogDeliveryConfiguration =
      $CreateDbInstanceOutput->LogDeliveryConfiguration;
    my $Name               = $CreateDbInstanceOutput->Name;
    my $NetworkType        = $CreateDbInstanceOutput->NetworkType;
    my $Port               = $CreateDbInstanceOutput->Port;
    my $PubliclyAccessible = $CreateDbInstanceOutput->PubliclyAccessible;
    my $SecondaryAvailabilityZone =
      $CreateDbInstanceOutput->SecondaryAvailabilityZone;
    my $Status              = $CreateDbInstanceOutput->Status;
    my $VpcSecurityGroupIds = $CreateDbInstanceOutput->VpcSecurityGroupIds;
    my $VpcSubnetIds        = $CreateDbInstanceOutput->VpcSubnetIds;

    # Returns a L<Paws::TimestreamInfluxDB::CreateDbInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/CreateDbInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllocatedStorage => Int

The amount of storage to allocate for your DB storage type in GiB
(gibibytes).



=head2 Bucket => Str

The name of the initial InfluxDB bucket. All InfluxDB data is stored in
a bucket. A bucket combines the concept of a database and a retention
period (the duration of time that each data point persists). A bucket
belongs to an organization.



=head2 B<REQUIRED> DbInstanceType => Str

The Timestream for InfluxDB DB instance type to run InfluxDB on.

Valid values are: C<"db.influx.medium">, C<"db.influx.large">, C<"db.influx.xlarge">, C<"db.influx.2xlarge">, C<"db.influx.4xlarge">, C<"db.influx.8xlarge">, C<"db.influx.12xlarge">, C<"db.influx.16xlarge">

=head2 DbParameterGroupIdentifier => Str

The id of the DB parameter group to assign to your DB instance. DB
parameter groups specify how the database is configured. For example,
DB parameter groups can specify the limit for query concurrency.



=head2 DbStorageType => Str

The Timestream for InfluxDB DB storage type to read and write InfluxDB
data.

You can choose between 3 different types of provisioned Influx IOPS
included storage according to your workloads requirements:

=over

=item *

Influx IO Included 3000 IOPS

=item *

Influx IO Included 12000 IOPS

=item *

Influx IO Included 16000 IOPS

=back


Valid values are: C<"InfluxIOIncludedT1">, C<"InfluxIOIncludedT2">, C<"InfluxIOIncludedT3">

=head2 DeploymentType => Str

Specifies whether the DB instance will be deployed as a standalone
instance or with a Multi-AZ standby for high availability.

Valid values are: C<"SINGLE_AZ">, C<"WITH_MULTIAZ_STANDBY">

=head2 LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>

Configuration for sending InfluxDB engine logs to a specified S3
bucket.



=head2 B<REQUIRED> Name => Str

The name that uniquely identifies the DB instance when interacting with
the Amazon Timestream for InfluxDB API and CLI commands. This name will
also be a prefix included in the endpoint. DB instance names must be
unique per customer and per region.



=head2 NetworkType => Str

Specifies whether the networkType of the Timestream for InfluxDB
instance is IPV4, which can communicate over IPv4 protocol only, or
DUAL, which can communicate over both IPv4 and IPv6 protocols.

Valid values are: C<"IPV4">, C<"DUAL">

=head2 Organization => Str

The name of the initial organization for the initial admin user in
InfluxDB. An InfluxDB organization is a workspace for a group of users.



=head2 B<REQUIRED> Password => Str

The password of the initial admin user created in InfluxDB. This
password will allow you to access the InfluxDB UI to perform various
administrative tasks and also use the InfluxDB CLI to create an
operator token. These attributes will be stored in a Secret created in
Secrets Manager in your account.



=head2 Port => Int

The port number on which InfluxDB accepts connections.

Valid Values: 1024-65535

Default: 8086

Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
51678-51680



=head2 PubliclyAccessible => Bool

Configures the DB instance with a public IP to facilitate access.



=head2 Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>

A list of key-value pairs to associate with the DB instance.



=head2 Username => Str

The username of the initial admin user created in InfluxDB. Must start
with a letter and can't end with a hyphen or contain two consecutive
hyphens. For example, my-user1. This username will allow you to access
the InfluxDB UI to perform various administrative tasks and also use
the InfluxDB CLI to create an operator token. These attributes will be
stored in a Secret created in Amazon Secrets Manager in your account.



=head2 B<REQUIRED> VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security group IDs to associate with the DB instance.



=head2 B<REQUIRED> VpcSubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs to associate with the DB instance. Provide at
least two VPC subnet IDs in different availability zones when deploying
with a Multi-AZ standby.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDbInstance in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

