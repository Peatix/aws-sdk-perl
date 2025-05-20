
package Paws::WellArchitected::ListProfileSharesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileShareSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ProfileShareSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListProfileSharesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ProfileShareSummaries => ArrayRef[L<Paws::WellArchitected::ProfileShareSummary>]

Profile share summaries.


=head2 _request_id => Str


=cut

