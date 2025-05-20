
package Paws::Rbin::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::RuleSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Rules => ArrayRef[L<Paws::Rbin::RuleSummary>]

Information about the retention rules.


=head2 _request_id => Str


=cut

