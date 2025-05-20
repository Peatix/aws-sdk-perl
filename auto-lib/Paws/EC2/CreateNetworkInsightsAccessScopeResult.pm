
package Paws::EC2::CreateNetworkInsightsAccessScopeResult;
  use Moose;
  has NetworkInsightsAccessScope => (is => 'ro', isa => 'Paws::EC2::NetworkInsightsAccessScope', request_name => 'networkInsightsAccessScope', traits => ['NameInRequest',]);
  has NetworkInsightsAccessScopeContent => (is => 'ro', isa => 'Paws::EC2::NetworkInsightsAccessScopeContent', request_name => 'networkInsightsAccessScopeContent', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInsightsAccessScopeResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAccessScope => L<Paws::EC2::NetworkInsightsAccessScope>

The Network Access Scope.


=head2 NetworkInsightsAccessScopeContent => L<Paws::EC2::NetworkInsightsAccessScopeContent>

The Network Access Scope content.


=head2 _request_id => Str


=cut

