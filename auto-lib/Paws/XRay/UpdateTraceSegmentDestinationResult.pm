
package Paws::XRay::UpdateTraceSegmentDestinationResult;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateTraceSegmentDestinationResult

=head1 ATTRIBUTES


=head2 Destination => Str

The destination of the trace segments.

Valid values are: C<"XRay">, C<"CloudWatchLogs">
=head2 Status => Str

The status of the update.

Valid values are: C<"PENDING">, C<"ACTIVE">
=head2 _request_id => Str


=cut

