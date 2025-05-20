
package Paws::SnowDeviceManagement::CreateTaskOutput;
  use Moose;
  has TaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskArn');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::CreateTaskOutput

=head1 ATTRIBUTES


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task that you created.


=head2 TaskId => Str

The ID of the task that you created.


=head2 _request_id => Str


=cut

