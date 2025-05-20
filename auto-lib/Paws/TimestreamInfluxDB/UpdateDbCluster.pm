
package Paws::TimestreamInfluxDB::UpdateDbCluster;
  use Moose;
  has DbClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbClusterId' , required => 1);
  has DbInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbInstanceType' );
  has DbParameterGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbParameterGroupIdentifier' );
  has FailoverMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failoverMode' );
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::LogDeliveryConfiguration', traits => ['NameInRequest'], request_name => 'logDeliveryConfiguration' );
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDbCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::UpdateDbClusterOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::UpdateDbCluster - Arguments for method UpdateDbCluster on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDbCluster on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method UpdateDbCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDbCluster.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $UpdateDbClusterOutput = $timestream -influxdb->UpdateDbCluster(
      DbClusterId                => 'MyDbClusterId',
      DbInstanceType             => 'db.influx.medium',               # OPTIONAL
      DbParameterGroupIdentifier => 'MyDbParameterGroupIdentifier',   # OPTIONAL
      FailoverMode               => 'AUTOMATIC',                      # OPTIONAL
      LogDeliveryConfiguration   => {
        S3Configuration => {
          BucketName => 'MyS3ConfigurationBucketNameString',   # min: 3, max: 63
          Enabled    => 1,

        },

      },    # OPTIONAL
      Port => 1,    # OPTIONAL
    );

    # Results:
    my $DbClusterStatus = $UpdateDbClusterOutput->DbClusterStatus;

    # Returns a L<Paws::TimestreamInfluxDB::UpdateDbClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/UpdateDbCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DbClusterId => Str

Service-generated unique identifier of the DB cluster to update.



=head2 DbInstanceType => Str

Update the DB cluster to use the specified DB instance Type.

Valid values are: C<"db.influx.medium">, C<"db.influx.large">, C<"db.influx.xlarge">, C<"db.influx.2xlarge">, C<"db.influx.4xlarge">, C<"db.influx.8xlarge">, C<"db.influx.12xlarge">, C<"db.influx.16xlarge">

=head2 DbParameterGroupIdentifier => Str

Update the DB cluster to use the specified DB parameter group.



=head2 FailoverMode => Str

Update the DB cluster's failover behavior.

Valid values are: C<"AUTOMATIC">, C<"NO_FAILOVER">

=head2 LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>

The log delivery configuration to apply to the DB cluster.



=head2 Port => Int

Update the DB cluster to use the specified port.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDbCluster in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

