
package Paws::AuditManager::GetInsightsResponse;
  use Moose;
  has Insights => (is => 'ro', isa => 'Paws::AuditManager::Insights', traits => ['NameInRequest'], request_name => 'insights');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetInsightsResponse

=head1 ATTRIBUTES


=head2 Insights => L<Paws::AuditManager::Insights>

The analytics data that the C<GetInsights> API returned.


=head2 _request_id => Str


=cut

