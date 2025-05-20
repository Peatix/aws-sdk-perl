
package Paws::EC2::DeleteNetworkInsightsAccessScopeAnalysisResult;
  use Moose;
  has NetworkInsightsAccessScopeAnalysisId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeAnalysisId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkInsightsAccessScopeAnalysisResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAccessScopeAnalysisId => Str

The ID of the Network Access Scope analysis.


=head2 _request_id => Str


=cut

