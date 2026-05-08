package Paws::Scheduler;
  use Moose;
  sub service { 'scheduler' }
  sub signing_name { 'scheduler' }
  sub version { '2021-06-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::CreateSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScheduleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::CreateScheduleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::DeleteSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::DeleteScheduleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::GetSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScheduleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::GetScheduleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScheduleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::ListScheduleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchedules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::ListSchedules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Scheduler::UpdateSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllScheduleGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScheduleGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListScheduleGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduleGroups }, @{ $next_result->ScheduleGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduleGroups') foreach (@{ $result->ScheduleGroups });
        $result = $self->ListScheduleGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduleGroups') foreach (@{ $result->ScheduleGroups });
    }

    return undef
  }
  sub ListAllSchedules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchedules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchedules(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schedules }, @{ $next_result->Schedules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schedules') foreach (@{ $result->Schedules });
        $result = $self->ListSchedules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schedules') foreach (@{ $result->Schedules });
    }

    return undef
  }


  sub operations { qw/CreateSchedule CreateScheduleGroup DeleteSchedule DeleteScheduleGroup GetSchedule GetScheduleGroup ListScheduleGroups ListSchedules ListTagsForResource TagResource UntagResource UpdateSchedule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler - Perl Interface to AWS Amazon EventBridge Scheduler

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Scheduler');
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

Amazon EventBridge Scheduler is a serverless scheduler that allows you
to create, run, and manage tasks from one central, managed service.
EventBridge Scheduler delivers your tasks reliably, with built-in
mechanisms that adjust your schedules based on the availability of
downstream targets. The following reference lists the available API
actions, and data types for EventBridge Scheduler.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30>


=head1 METHODS

=head2 CreateSchedule

=over

=item FlexibleTimeWindow => L<Paws::Scheduler::FlexibleTimeWindow>

=item Name => Str

=item ScheduleExpression => Str

=item Target => L<Paws::Scheduler::Target>

=item [ActionAfterCompletion => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [EndDate => Str]

=item [GroupName => Str]

=item [KmsKeyArn => Str]

=item [ScheduleExpressionTimezone => Str]

=item [StartDate => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::CreateSchedule>

Returns: a L<Paws::Scheduler::CreateScheduleOutput> instance

Creates the specified schedule.


=head2 CreateScheduleGroup

=over

=item Name => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::Scheduler::Tag>]]


=back

Each argument is described in detail in: L<Paws::Scheduler::CreateScheduleGroup>

Returns: a L<Paws::Scheduler::CreateScheduleGroupOutput> instance

Creates the specified schedule group.


=head2 DeleteSchedule

=over

=item Name => Str

=item [ClientToken => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::DeleteSchedule>

Returns: a L<Paws::Scheduler::DeleteScheduleOutput> instance

Deletes the specified schedule.


=head2 DeleteScheduleGroup

=over

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::DeleteScheduleGroup>

Returns: a L<Paws::Scheduler::DeleteScheduleGroupOutput> instance

Deletes the specified schedule group. Deleting a schedule group results
in EventBridge Scheduler deleting all schedules associated with the
group. When you delete a group, it remains in a C<DELETING> state until
all of its associated schedules are deleted. Schedules associated with
the group that are set to run while the schedule group is in the
process of being deleted might continue to invoke their targets until
the schedule group and its associated schedules are deleted.

This operation is eventually consistent.


=head2 GetSchedule

=over

=item Name => Str

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::GetSchedule>

Returns: a L<Paws::Scheduler::GetScheduleOutput> instance

Retrieves the specified schedule.


=head2 GetScheduleGroup

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Scheduler::GetScheduleGroup>

Returns: a L<Paws::Scheduler::GetScheduleGroupOutput> instance

Retrieves the specified schedule group.


=head2 ListScheduleGroups

=over

=item [MaxResults => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::ListScheduleGroups>

Returns: a L<Paws::Scheduler::ListScheduleGroupsOutput> instance

Returns a paginated list of your schedule groups.


=head2 ListSchedules

=over

=item [GroupName => Str]

=item [MaxResults => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::ListSchedules>

Returns: a L<Paws::Scheduler::ListSchedulesOutput> instance

Returns a paginated list of your EventBridge Scheduler schedules.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Scheduler::ListTagsForResource>

Returns: a L<Paws::Scheduler::ListTagsForResourceOutput> instance

Lists the tags associated with the Scheduler resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Scheduler::Tag>]


=back

Each argument is described in detail in: L<Paws::Scheduler::TagResource>

Returns: a L<Paws::Scheduler::TagResourceOutput> instance

Assigns one or more tags (key-value pairs) to the specified EventBridge
Scheduler resource. You can only assign tags to schedule groups.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Scheduler::UntagResource>

Returns: a L<Paws::Scheduler::UntagResourceOutput> instance

Removes one or more tags from the specified EventBridge Scheduler
schedule group.


=head2 UpdateSchedule

=over

=item FlexibleTimeWindow => L<Paws::Scheduler::FlexibleTimeWindow>

=item Name => Str

=item ScheduleExpression => Str

=item Target => L<Paws::Scheduler::Target>

=item [ActionAfterCompletion => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [EndDate => Str]

=item [GroupName => Str]

=item [KmsKeyArn => Str]

=item [ScheduleExpressionTimezone => Str]

=item [StartDate => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Scheduler::UpdateSchedule>

Returns: a L<Paws::Scheduler::UpdateScheduleOutput> instance

Updates the specified schedule. When you call C<UpdateSchedule>,
EventBridge Scheduler uses all values, including empty values,
specified in the request and overrides the existing schedule. This is
by design. This means that if you do not set an optional field in your
request, that field will be set to its system-default value after the
update.

Before calling this operation, we recommend that you call the
C<GetSchedule> API operation and make a note of all optional parameters
for your C<UpdateSchedule> call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllScheduleGroups(sub { },[MaxResults => Int, NamePrefix => Str, NextToken => Str])

=head2 ListAllScheduleGroups([MaxResults => Int, NamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduleGroups, passing the object as the first parameter, and the string 'ScheduleGroups' as the second parameter 

If not, it will return a a L<Paws::Scheduler::ListScheduleGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchedules(sub { },[GroupName => Str, MaxResults => Int, NamePrefix => Str, NextToken => Str, State => Str])

=head2 ListAllSchedules([GroupName => Str, MaxResults => Int, NamePrefix => Str, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schedules, passing the object as the first parameter, and the string 'Schedules' as the second parameter 

If not, it will return a a L<Paws::Scheduler::ListSchedulesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

