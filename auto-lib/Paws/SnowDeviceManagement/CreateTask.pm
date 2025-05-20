
package Paws::SnowDeviceManagement::CreateTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Command => (is => 'ro', isa => 'Paws::SnowDeviceManagement::Command', traits => ['NameInRequest'], request_name => 'command', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Tags => (is => 'ro', isa => 'Paws::SnowDeviceManagement::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::CreateTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::CreateTask - Arguments for method CreateTask on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTask on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method CreateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTask.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $CreateTaskOutput = $snow -device-management->CreateTask(
      Command => {
        Reboot => {

        },    # OPTIONAL
        Unlock => {

        },    # OPTIONAL
      },
      Targets     => [ 'MyString', ... ],
      ClientToken => 'MyIdempotencyToken',             # OPTIONAL
      Description => 'MyTaskDescriptionString',        # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $TaskArn = $CreateTaskOutput->TaskArn;
    my $TaskId  = $CreateTaskOutput->TaskId;

    # Returns a L<Paws::SnowDeviceManagement::CreateTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/CreateTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 B<REQUIRED> Command => L<Paws::SnowDeviceManagement::Command>

The task to be performed. Only one task is executed on a device at a
time.



=head2 Description => Str

A description of the task and its targets.



=head2 Tags => L<Paws::SnowDeviceManagement::TagMap>

Optional metadata that you assign to a resource. You can use tags to
categorize a resource in different ways, such as by purpose, owner, or
environment.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

A list of managed device IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTask in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

