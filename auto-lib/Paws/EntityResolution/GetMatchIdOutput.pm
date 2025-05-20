
package Paws::EntityResolution::GetMatchIdOutput;
  use Moose;
  has MatchId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'matchId');
  has MatchRule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'matchRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetMatchIdOutput

=head1 ATTRIBUTES


=head2 MatchId => Str

The unique identifiers for this group of match records.


=head2 MatchRule => Str

The rule the record matched on.


=head2 _request_id => Str


=cut

