
package Paws::CustomerProfiles::ListRuleBasedMatchesResponse;
  use Moose;
  has MatchIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListRuleBasedMatchesResponse

=head1 ATTRIBUTES


=head2 MatchIds => ArrayRef[Str|Undef]

The list of C<MatchIds> for the given domain.


=head2 NextToken => Str

The pagination token from the previous C<ListRuleBasedMatches> API
call.


=head2 _request_id => Str


=cut

