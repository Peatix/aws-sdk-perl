
package Paws::ImageBuilder::GetLifecycleExecutionResponse;
  use Moose;
  has LifecycleExecution => (is => 'ro', isa => 'Paws::ImageBuilder::LifecycleExecution', traits => ['NameInRequest'], request_name => 'lifecycleExecution');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetLifecycleExecutionResponse

=head1 ATTRIBUTES


=head2 LifecycleExecution => L<Paws::ImageBuilder::LifecycleExecution>

Runtime details for the specified runtime instance of the lifecycle
policy.


=head2 _request_id => Str


=cut

