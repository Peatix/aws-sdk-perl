package Paws::SnowDeviceManagement;
  use Moose;
  sub service { 'snow-device-management' }
  sub signing_name { 'snow-device-management' }
  sub version { '2021-08-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::CancelTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::CreateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeviceEc2Instances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::DescribeDeviceEc2Instances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::DescribeExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::DescribeTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::ListDeviceResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::ListExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SnowDeviceManagement::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDeviceResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeviceResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeviceResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListDeviceResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevices(@_, nextToken => $next_result->nextToken);
        push @{ $result->devices }, @{ $next_result->devices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'devices') foreach (@{ $result->devices });
        $result = $self->ListDevices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'devices') foreach (@{ $result->devices });
    }

    return undef
  }
  sub ListAllExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->executions }, @{ $next_result->executions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'executions') foreach (@{ $result->executions });
        $result = $self->ListExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'executions') foreach (@{ $result->executions });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tasks }, @{ $next_result->tasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tasks') foreach (@{ $result->tasks });
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tasks') foreach (@{ $result->tasks });
    }

    return undef
  }


  sub operations { qw/CancelTask CreateTask DescribeDevice DescribeDeviceEc2Instances DescribeExecution DescribeTask ListDeviceResources ListDevices ListExecutions ListTagsForResource ListTasks TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement - Perl Interface to AWS AWS Snow Device Management

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SnowDeviceManagement');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Web Services Snow Device Management documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04>


=head1 METHODS

=head2 CancelTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::CancelTask>

Returns: a L<Paws::SnowDeviceManagement::CancelTaskOutput> instance

Sends a cancel request for a specified task. You can cancel a task only
if it's still in a C<QUEUED> state. Tasks that are already running
can't be cancelled.

A task might still run if it's processed from the queue before the
C<CancelTask> operation changes the task's state.


=head2 CreateTask

=over

=item Command => L<Paws::SnowDeviceManagement::Command>

=item Targets => ArrayRef[Str|Undef]

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::SnowDeviceManagement::TagMap>]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::CreateTask>

Returns: a L<Paws::SnowDeviceManagement::CreateTaskOutput> instance

Instructs one or more devices to start a task, such as unlocking or
rebooting.


=head2 DescribeDevice

=over

=item ManagedDeviceId => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::DescribeDevice>

Returns: a L<Paws::SnowDeviceManagement::DescribeDeviceOutput> instance

Checks device-specific information, such as the device type, software
version, IP addresses, and lock status.


=head2 DescribeDeviceEc2Instances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item ManagedDeviceId => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::DescribeDeviceEc2Instances>

Returns: a L<Paws::SnowDeviceManagement::DescribeDeviceEc2Output> instance

Checks the current state of the Amazon EC2 instances. The output is
similar to C<describeDevice>, but the results are sourced from the
device cache in the Amazon Web Services Cloud and include a subset of
the available fields.


=head2 DescribeExecution

=over

=item ManagedDeviceId => Str

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::DescribeExecution>

Returns: a L<Paws::SnowDeviceManagement::DescribeExecutionOutput> instance

Checks the status of a remote task running on one or more target
devices.


=head2 DescribeTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::DescribeTask>

Returns: a L<Paws::SnowDeviceManagement::DescribeTaskOutput> instance

Checks the metadata for a given task on a device.


=head2 ListDeviceResources

=over

=item ManagedDeviceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::ListDeviceResources>

Returns: a L<Paws::SnowDeviceManagement::ListDeviceResourcesOutput> instance

Returns a list of the Amazon Web Services resources available for a
device. Currently, Amazon EC2 instances are the only supported resource
type.


=head2 ListDevices

=over

=item [JobId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::ListDevices>

Returns: a L<Paws::SnowDeviceManagement::ListDevicesOutput> instance

Returns a list of all devices on your Amazon Web Services account that
have Amazon Web Services Snow Device Management enabled in the Amazon
Web Services Region where the command is run.


=head2 ListExecutions

=over

=item TaskId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::ListExecutions>

Returns: a L<Paws::SnowDeviceManagement::ListExecutionsOutput> instance

Returns the status of tasks for one or more target devices.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::ListTagsForResource>

Returns: a L<Paws::SnowDeviceManagement::ListTagsForResourceOutput> instance

Returns a list of tags for a managed device or task.


=head2 ListTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::ListTasks>

Returns: a L<Paws::SnowDeviceManagement::ListTasksOutput> instance

Returns a list of tasks that can be filtered by state.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SnowDeviceManagement::TagMap>


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::TagResource>

Returns: nothing

Adds or replaces tags on a device or task.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SnowDeviceManagement::UntagResource>

Returns: nothing

Removes a tag from a device or task.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDeviceResources(sub { },ManagedDeviceId => Str, [MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllDeviceResources(ManagedDeviceId => Str, [MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::SnowDeviceManagement::ListDeviceResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevices(sub { },[JobId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDevices([JobId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devices, passing the object as the first parameter, and the string 'devices' as the second parameter 

If not, it will return a a L<Paws::SnowDeviceManagement::ListDevicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExecutions(sub { },TaskId => Str, [MaxResults => Int, NextToken => Str, State => Str])

=head2 ListAllExecutions(TaskId => Str, [MaxResults => Int, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executions, passing the object as the first parameter, and the string 'executions' as the second parameter 

If not, it will return a a L<Paws::SnowDeviceManagement::ListExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },[MaxResults => Int, NextToken => Str, State => Str])

=head2 ListAllTasks([MaxResults => Int, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tasks, passing the object as the first parameter, and the string 'tasks' as the second parameter 

If not, it will return a a L<Paws::SnowDeviceManagement::ListTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

