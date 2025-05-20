
package Paws::LakeFormation::GetQueryStatisticsResponse;
  use Moose;
  has ExecutionStatistics => (is => 'ro', isa => 'Paws::LakeFormation::ExecutionStatistics');
  has PlanningStatistics => (is => 'ro', isa => 'Paws::LakeFormation::PlanningStatistics');
  has QuerySubmissionTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetQueryStatisticsResponse

=head1 ATTRIBUTES


=head2 ExecutionStatistics => L<Paws::LakeFormation::ExecutionStatistics>

An C<ExecutionStatistics> structure containing execution statistics.


=head2 PlanningStatistics => L<Paws::LakeFormation::PlanningStatistics>

A C<PlanningStatistics> structure containing query planning statistics.


=head2 QuerySubmissionTime => Str

The time that the query was submitted.


=head2 _request_id => Str


=cut

