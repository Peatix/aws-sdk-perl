
package Paws::Athena::GetQueryRuntimeStatisticsOutput;
  use Moose;
  has QueryRuntimeStatistics => (is => 'ro', isa => 'Paws::Athena::QueryRuntimeStatistics');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetQueryRuntimeStatisticsOutput

=head1 ATTRIBUTES


=head2 QueryRuntimeStatistics => L<Paws::Athena::QueryRuntimeStatistics>

Runtime statistics about the query execution.


=head2 _request_id => Str


=cut

1;