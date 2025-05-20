
package Paws::ImageBuilder::CancelLifecycleExecutionResponse;
  use Moose;
  has LifecycleExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CancelLifecycleExecutionResponse

=head1 ATTRIBUTES


=head2 LifecycleExecutionId => Str

The unique identifier for the image lifecycle runtime instance that was
canceled.


=head2 _request_id => Str


=cut

