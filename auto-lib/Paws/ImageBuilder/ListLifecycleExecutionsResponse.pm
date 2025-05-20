
package Paws::ImageBuilder::ListLifecycleExecutionsResponse;
  use Moose;
  has LifecycleExecutions => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::LifecycleExecution]', traits => ['NameInRequest'], request_name => 'lifecycleExecutions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListLifecycleExecutionsResponse

=head1 ATTRIBUTES


=head2 LifecycleExecutions => ArrayRef[L<Paws::ImageBuilder::LifecycleExecution>]

A list of lifecycle runtime instances for the specified resource.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

