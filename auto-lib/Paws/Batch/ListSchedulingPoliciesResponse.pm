
package Paws::Batch::ListSchedulingPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SchedulingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Batch::SchedulingPolicyListingDetail]', traits => ['NameInRequest'], request_name => 'schedulingPolicies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListSchedulingPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListSchedulingPolicies>
request. When the results of a C<ListSchedulingPolicies> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 SchedulingPolicies => ArrayRef[L<Paws::Batch::SchedulingPolicyListingDetail>]

A list of scheduling policies that match the request.


=head2 _request_id => Str


=cut

