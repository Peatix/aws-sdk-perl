
package Paws::CloudWatchLogs::CreateLogAnomalyDetectorResponse;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateLogAnomalyDetectorResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the log anomaly detector that you just created.


=head2 _request_id => Str


=cut

1;