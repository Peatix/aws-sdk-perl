
package Paws::GuardDuty::GetCoverageStatisticsResponse;
  use Moose;
  has CoverageStatistics => (is => 'ro', isa => 'Paws::GuardDuty::CoverageStatistics', traits => ['NameInRequest'], request_name => 'coverageStatistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetCoverageStatisticsResponse

=head1 ATTRIBUTES


=head2 CoverageStatistics => L<Paws::GuardDuty::CoverageStatistics>

Represents the count aggregated by the C<statusCode> and
C<resourceType>.


=head2 _request_id => Str


=cut

