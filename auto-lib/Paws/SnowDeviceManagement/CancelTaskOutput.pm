
package Paws::SnowDeviceManagement::CancelTaskOutput;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::CancelTaskOutput

=head1 ATTRIBUTES


=head2 TaskId => Str

The ID of the task that you are attempting to cancel.


=head2 _request_id => Str


=cut

