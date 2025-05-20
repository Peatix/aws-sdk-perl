
package Paws::WellArchitected::ListLensSharesOutput;
  use Moose;
  has LensShareSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::LensShareSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListLensSharesOutput

=head1 ATTRIBUTES


=head2 LensShareSummaries => ArrayRef[L<Paws::WellArchitected::LensShareSummary>]

A list of lens share summaries.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

