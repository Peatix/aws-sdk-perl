
package Paws::ImageBuilder::StartResourceStateUpdateResponse;
  use Moose;
  has LifecycleExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleExecutionId');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::StartResourceStateUpdateResponse

=head1 ATTRIBUTES


=head2 LifecycleExecutionId => Str

Identifies the lifecycle runtime instance that started the resource
state update.


=head2 ResourceArn => Str

The requested ARN of the Image Builder resource for the asynchronous
update.


=head2 _request_id => Str


=cut

