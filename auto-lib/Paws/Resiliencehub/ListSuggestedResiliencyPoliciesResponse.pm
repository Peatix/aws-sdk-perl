
package Paws::Resiliencehub::ListSuggestedResiliencyPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResiliencyPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ResiliencyPolicy]', traits => ['NameInRequest'], request_name => 'resiliencyPolicies', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListSuggestedResiliencyPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> ResiliencyPolicies => ArrayRef[L<Paws::Resiliencehub::ResiliencyPolicy>]

The suggested resiliency policies for the Resilience Hub applications.


=head2 _request_id => Str


=cut

