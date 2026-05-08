package Paws::EMRServerless;
  use Moose;
  sub service { 'emr-serverless' }
  sub signing_name { 'emr-serverless' }
  sub version { '2021-07-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::CancelJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDashboardForJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::GetDashboardForJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::GetJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobRunAttempts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::ListJobRunAttempts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::ListJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::StartApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::StopApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRServerless::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->applications }, @{ $next_result->applications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applications') foreach (@{ $result->applications });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applications') foreach (@{ $result->applications });
    }

    return undef
  }
  sub ListAllJobRunAttempts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobRunAttempts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobRunAttempts(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobRunAttempts }, @{ $next_result->jobRunAttempts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobRunAttempts') foreach (@{ $result->jobRunAttempts });
        $result = $self->ListJobRunAttempts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobRunAttempts') foreach (@{ $result->jobRunAttempts });
    }

    return undef
  }
  sub ListAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobRuns }, @{ $next_result->jobRuns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobRuns') foreach (@{ $result->jobRuns });
        $result = $self->ListJobRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobRuns') foreach (@{ $result->jobRuns });
    }

    return undef
  }


  sub operations { qw/CancelJobRun CreateApplication DeleteApplication GetApplication GetDashboardForJobRun GetJobRun ListApplications ListJobRunAttempts ListJobRuns ListTagsForResource StartApplication StartJobRun StopApplication TagResource UntagResource UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless - Perl Interface to AWS EMR Serverless

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EMRServerless');
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

Amazon EMR Serverless is a new deployment option for Amazon EMR. Amazon
EMR Serverless provides a serverless runtime environment that
simplifies running analytics applications using the latest open source
frameworks such as Apache Spark and Apache Hive. With Amazon EMR
Serverless, you donE<rsquo>t have to configure, optimize, secure, or
operate clusters to run applications with these frameworks.

The API reference to Amazon EMR Serverless is C<emr-serverless>. The
C<emr-serverless> prefix is used in the following scenarios:

=over

=item *

It is the prefix in the CLI commands for Amazon EMR Serverless. For
example, C<aws emr-serverless start-job-run>.

=item *

It is the prefix before IAM policy actions for Amazon EMR Serverless.
For example, C<"Action": ["emr-serverless:StartJobRun"]>. For more
information, see Policy actions for Amazon EMR Serverless
(https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

=item *

It is the prefix used in Amazon EMR Serverless service endpoints. For
example, C<emr-serverless.us-east-2.amazonaws.com>.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13>


=head1 METHODS

=head2 CancelJobRun

=over

=item ApplicationId => Str

=item JobRunId => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::CancelJobRun>

Returns: a L<Paws::EMRServerless::CancelJobRunResponse> instance

Cancels a job run.


=head2 CreateApplication

=over

=item ClientToken => Str

=item ReleaseLabel => Str

=item Type => Str

=item [Architecture => Str]

=item [AutoStartConfiguration => L<Paws::EMRServerless::AutoStartConfig>]

=item [AutoStopConfiguration => L<Paws::EMRServerless::AutoStopConfig>]

=item [ImageConfiguration => L<Paws::EMRServerless::ImageConfigurationInput>]

=item [InitialCapacity => L<Paws::EMRServerless::InitialCapacityConfigMap>]

=item [InteractiveConfiguration => L<Paws::EMRServerless::InteractiveConfiguration>]

=item [MaximumCapacity => L<Paws::EMRServerless::MaximumAllowedResources>]

=item [MonitoringConfiguration => L<Paws::EMRServerless::MonitoringConfiguration>]

=item [Name => Str]

=item [NetworkConfiguration => L<Paws::EMRServerless::NetworkConfiguration>]

=item [RuntimeConfiguration => ArrayRef[L<Paws::EMRServerless::Configuration>]]

=item [SchedulerConfiguration => L<Paws::EMRServerless::SchedulerConfiguration>]

=item [Tags => L<Paws::EMRServerless::TagMap>]

=item [WorkerTypeSpecifications => L<Paws::EMRServerless::WorkerTypeSpecificationInputMap>]


=back

Each argument is described in detail in: L<Paws::EMRServerless::CreateApplication>

Returns: a L<Paws::EMRServerless::CreateApplicationResponse> instance

Creates an application.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::DeleteApplication>

Returns: a L<Paws::EMRServerless::DeleteApplicationResponse> instance

Deletes an application. An application has to be in a stopped or
created state in order to be deleted.


=head2 GetApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::GetApplication>

Returns: a L<Paws::EMRServerless::GetApplicationResponse> instance

Displays detailed information about a specified application.


=head2 GetDashboardForJobRun

=over

=item ApplicationId => Str

=item JobRunId => Str

=item [AccessSystemProfileLogs => Bool]

=item [Attempt => Int]


=back

Each argument is described in detail in: L<Paws::EMRServerless::GetDashboardForJobRun>

Returns: a L<Paws::EMRServerless::GetDashboardForJobRunResponse> instance

Creates and returns a URL that you can use to access the application
UIs for a job run.

For jobs in a running state, the application UI is a live user
interface such as the Spark or Tez web UI. For completed jobs, the
application UI is a persistent application user interface such as the
Spark History Server or persistent Tez UI.

The URL is valid for one hour after you generate it. To access the
application UI after that hour elapses, you must invoke the API again
to generate a new URL.


=head2 GetJobRun

=over

=item ApplicationId => Str

=item JobRunId => Str

=item [Attempt => Int]


=back

Each argument is described in detail in: L<Paws::EMRServerless::GetJobRun>

Returns: a L<Paws::EMRServerless::GetJobRunResponse> instance

Displays detailed information about a job run.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMRServerless::ListApplications>

Returns: a L<Paws::EMRServerless::ListApplicationsResponse> instance

Lists applications based on a set of parameters.


=head2 ListJobRunAttempts

=over

=item ApplicationId => Str

=item JobRunId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EMRServerless::ListJobRunAttempts>

Returns: a L<Paws::EMRServerless::ListJobRunAttemptsResponse> instance

Lists all attempt of a job run.


=head2 ListJobRuns

=over

=item ApplicationId => Str

=item [CreatedAtAfter => Str]

=item [CreatedAtBefore => Str]

=item [MaxResults => Int]

=item [Mode => Str]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMRServerless::ListJobRuns>

Returns: a L<Paws::EMRServerless::ListJobRunsResponse> instance

Lists job runs based on a set of parameters.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::ListTagsForResource>

Returns: a L<Paws::EMRServerless::ListTagsForResourceResponse> instance

Lists the tags assigned to the resources.


=head2 StartApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::StartApplication>

Returns: a L<Paws::EMRServerless::StartApplicationResponse> instance

Starts a specified application and initializes initial capacity if
configured.


=head2 StartJobRun

=over

=item ApplicationId => Str

=item ClientToken => Str

=item ExecutionRoleArn => Str

=item [ConfigurationOverrides => L<Paws::EMRServerless::ConfigurationOverrides>]

=item [ExecutionTimeoutMinutes => Int]

=item [JobDriver => L<Paws::EMRServerless::JobDriver>]

=item [Mode => Str]

=item [Name => Str]

=item [RetryPolicy => L<Paws::EMRServerless::RetryPolicy>]

=item [Tags => L<Paws::EMRServerless::TagMap>]


=back

Each argument is described in detail in: L<Paws::EMRServerless::StartJobRun>

Returns: a L<Paws::EMRServerless::StartJobRunResponse> instance

Starts a job run.


=head2 StopApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::EMRServerless::StopApplication>

Returns: a L<Paws::EMRServerless::StopApplicationResponse> instance

Stops a specified application and releases initial capacity if
configured. All scheduled and running jobs must be completed or
cancelled before stopping an application.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::EMRServerless::TagMap>


=back

Each argument is described in detail in: L<Paws::EMRServerless::TagResource>

Returns: a L<Paws::EMRServerless::TagResourceResponse> instance

Assigns tags to resources. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key and an
optional value, both of which you define. Tags enable you to categorize
your Amazon Web Services resources by attributes such as purpose,
owner, or environment. When you have many resources of the same type,
you can quickly identify a specific resource based on the tags you've
assigned to it.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EMRServerless::UntagResource>

Returns: a L<Paws::EMRServerless::UntagResourceResponse> instance

Removes tags from resources.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item ClientToken => Str

=item [Architecture => Str]

=item [AutoStartConfiguration => L<Paws::EMRServerless::AutoStartConfig>]

=item [AutoStopConfiguration => L<Paws::EMRServerless::AutoStopConfig>]

=item [ImageConfiguration => L<Paws::EMRServerless::ImageConfigurationInput>]

=item [InitialCapacity => L<Paws::EMRServerless::InitialCapacityConfigMap>]

=item [InteractiveConfiguration => L<Paws::EMRServerless::InteractiveConfiguration>]

=item [MaximumCapacity => L<Paws::EMRServerless::MaximumAllowedResources>]

=item [MonitoringConfiguration => L<Paws::EMRServerless::MonitoringConfiguration>]

=item [NetworkConfiguration => L<Paws::EMRServerless::NetworkConfiguration>]

=item [ReleaseLabel => Str]

=item [RuntimeConfiguration => ArrayRef[L<Paws::EMRServerless::Configuration>]]

=item [SchedulerConfiguration => L<Paws::EMRServerless::SchedulerConfiguration>]

=item [WorkerTypeSpecifications => L<Paws::EMRServerless::WorkerTypeSpecificationInputMap>]


=back

Each argument is described in detail in: L<Paws::EMRServerless::UpdateApplication>

Returns: a L<Paws::EMRServerless::UpdateApplicationResponse> instance

Updates a specified application. An application has to be in a stopped
or created state in order to be updated.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applications, passing the object as the first parameter, and the string 'applications' as the second parameter 

If not, it will return a a L<Paws::EMRServerless::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobRunAttempts(sub { },ApplicationId => Str, JobRunId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobRunAttempts(ApplicationId => Str, JobRunId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobRunAttempts, passing the object as the first parameter, and the string 'jobRunAttempts' as the second parameter 

If not, it will return a a L<Paws::EMRServerless::ListJobRunAttemptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobRuns(sub { },ApplicationId => Str, [CreatedAtAfter => Str, CreatedAtBefore => Str, MaxResults => Int, Mode => Str, NextToken => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllJobRuns(ApplicationId => Str, [CreatedAtAfter => Str, CreatedAtBefore => Str, MaxResults => Int, Mode => Str, NextToken => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobRuns, passing the object as the first parameter, and the string 'jobRuns' as the second parameter 

If not, it will return a a L<Paws::EMRServerless::ListJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

