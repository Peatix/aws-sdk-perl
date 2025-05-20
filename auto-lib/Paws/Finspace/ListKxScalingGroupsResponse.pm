
package Paws::Finspace::ListKxScalingGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxScalingGroup]', traits => ['NameInRequest'], request_name => 'scalingGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxScalingGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 ScalingGroups => ArrayRef[L<Paws::Finspace::KxScalingGroup>]

A list of scaling groups available in a kdb environment.


=head2 _request_id => Str


=cut

