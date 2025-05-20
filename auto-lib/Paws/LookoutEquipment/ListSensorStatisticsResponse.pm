
package Paws::LookoutEquipment::ListSensorStatisticsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SensorStatisticsSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::SensorStatisticsSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListSensorStatisticsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
sensor statistics.


=head2 SensorStatisticsSummaries => ArrayRef[L<Paws::LookoutEquipment::SensorStatisticsSummary>]

Provides ingestion-based statistics regarding the specified sensor with
respect to various validation types, such as whether data exists, the
number and percentage of missing values, and the number and percentage
of duplicate timestamps.


=head2 _request_id => Str


=cut

1;