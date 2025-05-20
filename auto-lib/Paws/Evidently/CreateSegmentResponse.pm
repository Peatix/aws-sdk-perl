
package Paws::Evidently::CreateSegmentResponse;
  use Moose;
  has Segment => (is => 'ro', isa => 'Paws::Evidently::Segment', traits => ['NameInRequest'], request_name => 'segment', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateSegmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Segment => L<Paws::Evidently::Segment>

A structure that contains the complete information about the segment
that was just created.


=head2 _request_id => Str


=cut

