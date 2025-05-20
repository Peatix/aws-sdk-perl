
package Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindingsResult;
  use Moose;
  has AnalysisFindings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccessScopeAnalysisFinding]', request_name => 'analysisFindingSet', traits => ['NameInRequest',]);
  has AnalysisStatus => (is => 'ro', isa => 'Str', request_name => 'analysisStatus', traits => ['NameInRequest',]);
  has NetworkInsightsAccessScopeAnalysisId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeAnalysisId', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindingsResult

=head1 ATTRIBUTES


=head2 AnalysisFindings => ArrayRef[L<Paws::EC2::AccessScopeAnalysisFinding>]

The findings associated with Network Access Scope Analysis.


=head2 AnalysisStatus => Str

The status of Network Access Scope Analysis.

Valid values are: C<"running">, C<"succeeded">, C<"failed">
=head2 NetworkInsightsAccessScopeAnalysisId => Str

The ID of the Network Access Scope analysis.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

