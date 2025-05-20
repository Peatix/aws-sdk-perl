
package Paws::EC2::StartNetworkInsightsAccessScopeAnalysisResult;
  use Moose;
  has NetworkInsightsAccessScopeAnalysis => (is => 'ro', isa => 'Paws::EC2::NetworkInsightsAccessScopeAnalysis', request_name => 'networkInsightsAccessScopeAnalysis', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartNetworkInsightsAccessScopeAnalysisResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAccessScopeAnalysis => L<Paws::EC2::NetworkInsightsAccessScopeAnalysis>

The Network Access Scope analysis.


=head2 _request_id => Str


=cut

