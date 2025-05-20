
package Paws::ApplicationAutoScaling::GetPredictiveScalingForecastResponse;
  use Moose;
  has CapacityForecast => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::CapacityForecast');
  has LoadForecast => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::LoadForecast]');
  has UpdateTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::GetPredictiveScalingForecastResponse

=head1 ATTRIBUTES


=head2 CapacityForecast => L<Paws::ApplicationAutoScaling::CapacityForecast>

The capacity forecast.


=head2 LoadForecast => ArrayRef[L<Paws::ApplicationAutoScaling::LoadForecast>]

The load forecast.


=head2 UpdateTime => Str

The time the forecast was made.


=head2 _request_id => Str


=cut

1;