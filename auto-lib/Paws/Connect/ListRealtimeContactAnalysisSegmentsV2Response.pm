
package Paws::Connect::ListRealtimeContactAnalysisSegmentsV2Response;
  use Moose;
  has Channel => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Segments => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RealtimeContactAnalysisSegment]', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRealtimeContactAnalysisSegmentsV2Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channel => Str

The channel of the contact.

Only C<CHAT> is supported. This API does not support C<VOICE>. If you
attempt to use it for the VOICE channel, an C<InvalidRequestException>
error occurs.

Valid values are: C<"VOICE">, C<"CHAT">
=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 B<REQUIRED> Segments => ArrayRef[L<Paws::Connect::RealtimeContactAnalysisSegment>]

An analyzed transcript or category.


=head2 B<REQUIRED> Status => Str

Status of real-time contact analysis.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

