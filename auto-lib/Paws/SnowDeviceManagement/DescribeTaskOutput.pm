
package Paws::SnowDeviceManagement::DescribeTaskOutput;
  use Moose;
  has CompletedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completedAt');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::SnowDeviceManagement::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets');
  has TaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskArn');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeTaskOutput

=head1 ATTRIBUTES


=head2 CompletedAt => Str

When the task was completed.


=head2 CreatedAt => Str

When the C<CreateTask> operation was called.


=head2 Description => Str

The description provided of the task and managed devices.


=head2 LastUpdatedAt => Str

When the state of the task was last updated.


=head2 State => Str

The current state of the task.

Valid values are: C<"IN_PROGRESS">, C<"CANCELED">, C<"COMPLETED">
=head2 Tags => L<Paws::SnowDeviceManagement::TagMap>

Optional metadata that you assign to a resource. You can use tags to
categorize a resource in different ways, such as by purpose, owner, or
environment.


=head2 Targets => ArrayRef[Str|Undef]

The managed devices that the task was sent to.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task.


=head2 TaskId => Str

The ID of the task.


=head2 _request_id => Str


=cut

