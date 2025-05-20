
package Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse;
  use Moose;
  has AnomalyDetectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::AnomalyDetector]', traits => ['NameInRequest'], request_name => 'anomalyDetectors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectors => ArrayRef[L<Paws::CloudWatchLogs::AnomalyDetector>]

An array of structures, where each structure in the array contains
information about one anomaly detector.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;