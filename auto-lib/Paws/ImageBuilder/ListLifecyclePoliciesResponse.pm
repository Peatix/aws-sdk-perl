
package Paws::ImageBuilder::ListLifecyclePoliciesResponse;
  use Moose;
  has LifecyclePolicySummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::LifecyclePolicySummary]', traits => ['NameInRequest'], request_name => 'lifecyclePolicySummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListLifecyclePoliciesResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicySummaryList => ArrayRef[L<Paws::ImageBuilder::LifecyclePolicySummary>]

A list of lifecycle policies in your Amazon Web Services account that
meet the criteria specified in the request.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

