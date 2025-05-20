
package Paws::TimestreamInfluxDB::UpdateDbInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'allocatedStorage' );
  has DbInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbInstanceType' );
  has DbParameterGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbParameterGroupIdentifier' );
  has DbStorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbStorageType' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' );
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::LogDeliveryConfiguration', traits => ['NameInRequest'], request_name => 'logDeliveryConfiguration' );
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::UpdateDbInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::UpdateDbInstance - Arguments for method UpdateDbInstance on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDbInstance on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method UpdateDbInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDbInstance.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $UpdateDbInstanceOutput = $timestream -influxdb->UpdateDbInstance(
      Identifier                 => 'MyDbInstanceIdentifier',
      AllocatedStorage           => 1,                                # OPTIONAL
      DbInstanceType             => 'db.influx.medium',               # OPTIONAL
      DbParameterGroupIdentifier => 'MyDbParameterGroupIdentifier',   # OPTIONAL
      DbStorageType              => 'InfluxIOIncludedT1',             # OPTIONAL
      DeploymentType             => 'SINGLE_AZ',                      # OPTIONAL
      LogDeliveryConfiguration   => {
        S3Configuration => {
          BucketName => 'MyS3ConfigurationBucketNameString',   # min: 3, max: 63
          Enabled    => 1,

        },

      },    # OPTIONAL
      Port => 1,    # OPTIONAL
    );

    # Results:
    my $AllocatedStorage = $UpdateDbInstanceOutput->AllocatedStorage;
    my $Arn              = $UpdateDbInstanceOutput->Arn;
    my $AvailabilityZone = $UpdateDbInstanceOutput->AvailabilityZone;
    my $DbClusterId      = $UpdateDbInstanceOutput->DbClusterId;
    my $DbInstanceType   = $UpdateDbInstanceOutput->DbInstanceType;
    my $DbParameterGroupIdentifier =
      $UpdateDbInstanceOutput->DbParameterGroupIdentifier;
    my $DbStorageType  = $UpdateDbInstanceOutput->DbStorageType;
    my $DeploymentType = $UpdateDbInstanceOutput->DeploymentType;
    my $Endpoint       = $UpdateDbInstanceOutput->Endpoint;
    my $Id             = $UpdateDbInstanceOutput->Id;
    my $InfluxAuthParametersSecretArn =
      $UpdateDbInstanceOutput->InfluxAuthParametersSecretArn;
    my $InstanceMode = $UpdateDbInstanceOutput->InstanceMode;
    my $LogDeliveryConfiguration =
      $UpdateDbInstanceOutput->LogDeliveryConfiguration;
    my $Name               = $UpdateDbInstanceOutput->Name;
    my $NetworkType        = $UpdateDbInstanceOutput->NetworkType;
    my $Port               = $UpdateDbInstanceOutput->Port;
    my $PubliclyAccessible = $UpdateDbInstanceOutput->PubliclyAccessible;
    my $SecondaryAvailabilityZone =
      $UpdateDbInstanceOutput->SecondaryAvailabilityZone;
    my $Status              = $UpdateDbInstanceOutput->Status;
    my $VpcSecurityGroupIds = $UpdateDbInstanceOutput->VpcSecurityGroupIds;
    my $VpcSubnetIds        = $UpdateDbInstanceOutput->VpcSubnetIds;

    # Returns a L<Paws::TimestreamInfluxDB::UpdateDbInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/UpdateDbInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage to allocate for your DB storage type (in
gibibytes).



=head2 DbInstanceType => Str

The Timestream for InfluxDB DB instance type to run InfluxDB on.

Valid values are: C<"db.influx.medium">, C<"db.influx.large">, C<"db.influx.xlarge">, C<"db.influx.2xlarge">, C<"db.influx.4xlarge">, C<"db.influx.8xlarge">, C<"db.influx.12xlarge">, C<"db.influx.16xlarge">

=head2 DbParameterGroupIdentifier => Str

The id of the DB parameter group to assign to your DB instance. DB
parameter groups specify how the database is configured. For example,
DB parameter groups can specify the limit for query concurrency.



=head2 DbStorageType => Str

The Timestream for InfluxDB DB storage type that InfluxDB stores data
on.

Valid values are: C<"InfluxIOIncludedT1">, C<"InfluxIOIncludedT2">, C<"InfluxIOIncludedT3">

=head2 DeploymentType => Str

Specifies whether the DB instance will be deployed as a standalone
instance or with a Multi-AZ standby for high availability.

Valid values are: C<"SINGLE_AZ">, C<"WITH_MULTIAZ_STANDBY">

=head2 B<REQUIRED> Identifier => Str

The id of the DB instance.



=head2 LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>

Configuration for sending InfluxDB engine logs to send to specified S3
bucket.



=head2 Port => Int

The port number on which InfluxDB accepts connections.

If you change the Port value, your database restarts immediately.

Valid Values: 1024-65535

Default: 8086

Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
51678-51680




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDbInstance in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

