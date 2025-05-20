
package Paws::XRay::GetTraceSegmentDestinationResult;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTraceSegmentDestinationResult

=head1 ATTRIBUTES


=head2 Destination => Str

Retrieves the current destination.

Valid values are: C<"XRay">, C<"CloudWatchLogs">
=head2 Status => Str

Status of the retrieval.

Valid values are: C<"PENDING">, C<"ACTIVE">
=head2 _request_id => Str


=cut

