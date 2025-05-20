
package Paws::Evidently::TestSegmentPatternResponse;
  use Moose;
  has Match => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'match', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::TestSegmentPatternResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Match => Bool

Returns C<true> if the pattern matches the payload.


=head2 _request_id => Str


=cut

