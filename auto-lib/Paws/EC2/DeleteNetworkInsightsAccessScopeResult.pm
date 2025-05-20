
package Paws::EC2::DeleteNetworkInsightsAccessScopeResult;
  use Moose;
  has NetworkInsightsAccessScopeId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkInsightsAccessScopeResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAccessScopeId => Str

The ID of the Network Access Scope.


=head2 _request_id => Str


=cut

