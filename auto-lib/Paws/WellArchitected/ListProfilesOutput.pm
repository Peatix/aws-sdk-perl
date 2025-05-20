
package Paws::WellArchitected::ListProfilesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ProfileSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListProfilesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ProfileSummaries => ArrayRef[L<Paws::WellArchitected::ProfileSummary>]

Profile summaries.


=head2 _request_id => Str


=cut

