
package Paws::Resiliencehub::DescribeResourceGroupingRecommendationTaskResponse;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has GroupingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupingId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeResourceGroupingRecommendationTaskResponse

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Error that occurred while generating a grouping recommendation.


=head2 B<REQUIRED> GroupingId => Str

Identifier of the grouping recommendation task.


=head2 B<REQUIRED> Status => Str

Status of the action.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

