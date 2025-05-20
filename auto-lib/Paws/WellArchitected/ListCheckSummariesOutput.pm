
package Paws::WellArchitected::ListCheckSummariesOutput;
  use Moose;
  has CheckSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::CheckSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListCheckSummariesOutput

=head1 ATTRIBUTES


=head2 CheckSummaries => ArrayRef[L<Paws::WellArchitected::CheckSummary>]

List of Trusted Advisor summaries related to the Well-Architected best
practice.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

