
package Paws::TimestreamInfluxDB::CreateDbParameterGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::Parameters', traits => ['NameInRequest'], request_name => 'parameters' );
  has Tags => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::RequestTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDbParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::CreateDbParameterGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::CreateDbParameterGroup - Arguments for method CreateDbParameterGroup on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDbParameterGroup on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method CreateDbParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDbParameterGroup.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $CreateDbParameterGroupOutput =
      $timestream -influxdb->CreateDbParameterGroup(
      Name        => 'MyDbParameterGroupName',
      Description =>
        'MyCreateDbParameterGroupInputDescriptionString',    # OPTIONAL
      Parameters => {
        InfluxDBv2 => {
          FluxLogEnabled  => 1,                              # OPTIONAL
          HttpIdleTimeout => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          HttpReadHeaderTimeout => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          HttpReadTimeout => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          HttpWriteTimeout => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          InfluxqlMaxSelectBuckets => 1,    # max: 1000000000000; OPTIONAL
          InfluxqlMaxSelectPoint   => 1,    # max: 1000000000000; OPTIONAL
          InfluxqlMaxSelectSeries  => 1,    # max: 1000000000000; OPTIONAL
          LogLevel         => 'debug',    # values: debug, info, error; OPTIONAL
          MetricsDisabled  => 1,          # OPTIONAL
          NoTasks          => 1,          # OPTIONAL
          PprofDisabled    => 1,          # OPTIONAL
          QueryConcurrency => 1,          # max: 256; OPTIONAL
          QueryInitialMemoryBytes        => 1,    # max: 1000000000000; OPTIONAL
          QueryMaxMemoryBytes            => 1,    # max: 1000000000000; OPTIONAL
          QueryMemoryBytes               => 1,    # max: 1000000000000; OPTIONAL
          QueryQueueSize                 => 1,    # max: 256; OPTIONAL
          SessionLength                  => 1,    # min: 1, max: 2880; OPTIONAL
          SessionRenewDisabled           => 1,    # OPTIONAL
          StorageCacheMaxMemorySize      => 1,    # max: 1000000000000; OPTIONAL
          StorageCacheSnapshotMemorySize => 1,    # max: 1000000000000; OPTIONAL
          StorageCacheSnapshotWriteColdDuration => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          StorageCompactFullWriteColdDuration => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          StorageCompactThroughputBurst   => 1,   # max: 1000000000000; OPTIONAL
          StorageMaxConcurrentCompactions => 1,   # max: 64; OPTIONAL
          StorageMaxIndexLogFileSize      => 1,   # max: 1000000000000; OPTIONAL
          StorageNoValidateFieldSize      => 1,   # OPTIONAL
          StorageRetentionCheckInterval   => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          StorageSeriesFileMaxConcurrentSnapshotCompactions =>
            1,    # max: 64; OPTIONAL
          StorageSeriesIdSetCacheSize   => 1,    # max: 1000000000000; OPTIONAL
          StorageWalMaxConcurrentWrites => 1,    # max: 256; OPTIONAL
          StorageWalMaxWriteDelay       => {
            DurationType =>
              'hours',    # values: hours, minutes, seconds, milliseconds
            Value => 1,

          },    # OPTIONAL
          TracingType => 'log',    # values: log, jaeger; OPTIONAL
          UiDisabled  => 1,        # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn         = $CreateDbParameterGroupOutput->Arn;
    my $Description = $CreateDbParameterGroupOutput->Description;
    my $Id          = $CreateDbParameterGroupOutput->Id;
    my $Name        = $CreateDbParameterGroupOutput->Name;
    my $Parameters  = $CreateDbParameterGroupOutput->Parameters;

   # Returns a L<Paws::TimestreamInfluxDB::CreateDbParameterGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/CreateDbParameterGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the DB parameter group.



=head2 B<REQUIRED> Name => Str

The name of the DB parameter group. The name must be unique per
customer and per region.



=head2 Parameters => L<Paws::TimestreamInfluxDB::Parameters>

A list of the parameters that comprise the DB parameter group.



=head2 Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>

A list of key-value pairs to associate with the DB parameter group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDbParameterGroup in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

