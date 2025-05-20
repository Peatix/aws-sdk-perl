
package Paws::CostExplorer::StartCommitmentPurchaseAnalysisResponse;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', required => 1);
  has AnalysisStartedTime => (is => 'ro', isa => 'Str', required => 1);
  has EstimatedCompletionTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::StartCommitmentPurchaseAnalysisResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The analysis ID that's associated with the commitment purchase
analysis.


=head2 B<REQUIRED> AnalysisStartedTime => Str

The start time of the analysis.


=head2 B<REQUIRED> EstimatedCompletionTime => Str

The estimated time for when the analysis will complete.


=head2 _request_id => Str


=cut

1;