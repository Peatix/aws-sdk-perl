
package Paws::Evidently::ListSegmentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Segments => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::Segment]', traits => ['NameInRequest'], request_name => 'segments');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListSegmentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use in a subsequent C<ListSegments> operation to return
the next set of results.


=head2 Segments => ArrayRef[L<Paws::Evidently::Segment>]

An array of structures that contain information about the segments in
this Region.


=head2 _request_id => Str


=cut

