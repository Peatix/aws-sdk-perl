
package Paws::AccessAnalyzer::GetFindingsStatisticsResponse;
  use Moose;
  has FindingsStatistics => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::FindingsStatistics]', traits => ['NameInRequest'], request_name => 'findingsStatistics');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFindingsStatisticsResponse

=head1 ATTRIBUTES


=head2 FindingsStatistics => ArrayRef[L<Paws::AccessAnalyzer::FindingsStatistics>]

A group of external access or unused access findings statistics.


=head2 LastUpdatedAt => Str

The time at which the retrieval of the findings statistics was last
updated. If the findings statistics have not been previously retrieved
for the specified analyzer, this field will not be populated.


=head2 _request_id => Str


=cut

