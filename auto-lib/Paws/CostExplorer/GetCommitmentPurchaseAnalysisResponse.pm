
package Paws::CostExplorer::GetCommitmentPurchaseAnalysisResponse;
  use Moose;
  has AnalysisCompletionTime => (is => 'ro', isa => 'Str');
  has AnalysisDetails => (is => 'ro', isa => 'Paws::CostExplorer::AnalysisDetails');
  has AnalysisId => (is => 'ro', isa => 'Str', required => 1);
  has AnalysisStartedTime => (is => 'ro', isa => 'Str', required => 1);
  has AnalysisStatus => (is => 'ro', isa => 'Str', required => 1);
  has CommitmentPurchaseAnalysisConfiguration => (is => 'ro', isa => 'Paws::CostExplorer::CommitmentPurchaseAnalysisConfiguration', required => 1);
  has ErrorCode => (is => 'ro', isa => 'Str');
  has EstimatedCompletionTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCommitmentPurchaseAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalysisCompletionTime => Str

The completion time of the analysis.


=head2 AnalysisDetails => L<Paws::CostExplorer::AnalysisDetails>

Details about the analysis.


=head2 B<REQUIRED> AnalysisId => Str

The analysis ID that's associated with the commitment purchase
analysis.


=head2 B<REQUIRED> AnalysisStartedTime => Str

The start time of the analysis.


=head2 B<REQUIRED> AnalysisStatus => Str

The status of the analysis.

Valid values are: C<"SUCCEEDED">, C<"PROCESSING">, C<"FAILED">
=head2 B<REQUIRED> CommitmentPurchaseAnalysisConfiguration => L<Paws::CostExplorer::CommitmentPurchaseAnalysisConfiguration>

The configuration for the commitment purchase analysis.


=head2 ErrorCode => Str

The error code used for the analysis.

Valid values are: C<"NO_USAGE_FOUND">, C<"INTERNAL_FAILURE">, C<"INVALID_SAVINGS_PLANS_TO_ADD">, C<"INVALID_SAVINGS_PLANS_TO_EXCLUDE">, C<"INVALID_ACCOUNT_ID">
=head2 B<REQUIRED> EstimatedCompletionTime => Str

The estimated time for when the analysis will complete.


=head2 _request_id => Str


=cut

1;