
package Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse;
  use Moose;
  has LifecycleExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleExecutionId');
  has LifecycleExecutionState => (is => 'ro', isa => 'Paws::ImageBuilder::LifecycleExecutionState', traits => ['NameInRequest'], request_name => 'lifecycleExecutionState');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::LifecycleExecutionResource]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse

=head1 ATTRIBUTES


=head2 LifecycleExecutionId => Str

Runtime details for the specified runtime instance of the lifecycle
policy.


=head2 LifecycleExecutionState => L<Paws::ImageBuilder::LifecycleExecutionState>

The current state of the lifecycle runtime instance.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 Resources => ArrayRef[L<Paws::ImageBuilder::LifecycleExecutionResource>]

A list of resources that were identified for lifecycle actions.


=head2 _request_id => Str


=cut

