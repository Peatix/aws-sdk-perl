
package Paws::IoT::CreateFleetMetricResponse;
  use Moose;
  has MetricArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricArn');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateFleetMetricResponse

=head1 ATTRIBUTES


=head2 MetricArn => Str

The Amazon Resource Name (ARN) of the new fleet metric.


=head2 MetricName => Str

The name of the fleet metric to create.


=head2 _request_id => Str


=cut

