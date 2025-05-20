
package Paws::Deadline::StartSessionsStatisticsAggregation;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'groupBy', required => 1);
  has Period => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'period');
  has ResourceIds => (is => 'ro', isa => 'Paws::Deadline::SessionsStatisticsResources', traits => ['NameInRequest'], request_name => 'resourceIds', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics', required => 1);
  has Timezone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timezone');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSessionsStatisticsAggregation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/sessions-statistics-aggregation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::StartSessionsStatisticsAggregationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::StartSessionsStatisticsAggregation - Arguments for method StartSessionsStatisticsAggregation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSessionsStatisticsAggregation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method StartSessionsStatisticsAggregation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSessionsStatisticsAggregation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $StartSessionsStatisticsAggregationResponse =
      $deadline->StartSessionsStatisticsAggregation(
      EndTime => '1970-01-01T01:00:00',
      FarmId  => 'MyFarmId',
      GroupBy => [
        'QUEUE_ID',
        ... # values: QUEUE_ID, FLEET_ID, JOB_ID, USER_ID, USAGE_TYPE, INSTANCE_TYPE, LICENSE_PRODUCT
      ],
      ResourceIds => {
        FleetIds => [ 'MyFleetId', ... ],    # min: 1, max: 10; OPTIONAL
        QueueIds => [ 'MyQueueId', ... ],    # min: 1, max: 10; OPTIONAL
      },
      StartTime  => '1970-01-01T01:00:00',
      Statistics => [
        'SUM', ...                           # values: SUM, MIN, MAX, AVG
      ],
      Period   => 'HOURLY',                  # OPTIONAL
      Timezone => 'MyTimezone',              # OPTIONAL
      );

    # Results:
    my $AggregationId =
      $StartSessionsStatisticsAggregationResponse->AggregationId;

# Returns a L<Paws::Deadline::StartSessionsStatisticsAggregationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/StartSessionsStatisticsAggregation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The Linux timestamp of the date and time that the statistics end.



=head2 B<REQUIRED> FarmId => Str

The identifier of the farm that contains queues or fleets to return
statistics for.



=head2 B<REQUIRED> GroupBy => ArrayRef[Str|Undef]

The field to use to group the statistics.



=head2 Period => Str

The period to aggregate the statistics.

Valid values are: C<"HOURLY">, C<"DAILY">, C<"WEEKLY">, C<"MONTHLY">

=head2 B<REQUIRED> ResourceIds => L<Paws::Deadline::SessionsStatisticsResources>

A list of fleet IDs or queue IDs to gather statistics for.



=head2 B<REQUIRED> StartTime => Str

The Linux timestamp of the date and time that the statistics start.



=head2 B<REQUIRED> Statistics => ArrayRef[Str|Undef]

One to four statistics to return.



=head2 Timezone => Str

The timezone to use for the statistics. Use UTC notation such as
"UTC+8."




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSessionsStatisticsAggregation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

