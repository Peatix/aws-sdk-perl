
package Paws::Lightsail::GetInstanceMetricDataResult;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::MetricDatapoint]', traits => ['NameInRequest'], request_name => 'metricData' );
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[L<Paws::Lightsail::MetricDatapoint>]

An array of objects that describe the metric data returned.


=head2 MetricName => Str

The name of the metric returned.

Valid values are: C<"CPUUtilization">, C<"NetworkIn">, C<"NetworkOut">, C<"StatusCheckFailed">, C<"StatusCheckFailed_Instance">, C<"StatusCheckFailed_System">, C<"BurstCapacityTime">, C<"BurstCapacityPercentage">, C<"MetadataNoToken">
=head2 _request_id => Str


=cut

1;