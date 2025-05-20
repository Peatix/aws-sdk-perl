
package Paws::CloudWatchLogs::ListAnomaliesResponse;
  use Moose;
  has Anomalies => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Anomaly]', traits => ['NameInRequest'], request_name => 'anomalies' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListAnomaliesResponse

=head1 ATTRIBUTES


=head2 Anomalies => ArrayRef[L<Paws::CloudWatchLogs::Anomaly>]

An array of structures, where each structure contains information about
one anomaly that a log anomaly detector has found.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;