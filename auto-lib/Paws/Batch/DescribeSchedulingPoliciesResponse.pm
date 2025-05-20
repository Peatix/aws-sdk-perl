
package Paws::Batch::DescribeSchedulingPoliciesResponse;
  use Moose;
  has SchedulingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Batch::SchedulingPolicyDetail]', traits => ['NameInRequest'], request_name => 'schedulingPolicies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeSchedulingPoliciesResponse

=head1 ATTRIBUTES


=head2 SchedulingPolicies => ArrayRef[L<Paws::Batch::SchedulingPolicyDetail>]

The list of scheduling policies.


=head2 _request_id => Str


=cut

