package Paws::M2;
  use Moose;
  sub service { 'm2' }
  sub signing_name { 'm2' }
  sub version { '2021-04-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelBatchJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CancelBatchJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSetExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CreateDataSetExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSetImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CreateDataSetImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationFromEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::DeleteApplicationFromEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBatchJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetBatchJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSetDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetDataSetDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSetExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetDataSetExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSetImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetDataSetImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSignedBluinsightsUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::GetSignedBluinsightsUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListApplicationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListBatchJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchJobExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListBatchJobExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchJobRestartPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListBatchJobRestartPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSetExportHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListDataSetExportHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSetImportHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListDataSetImportHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListDataSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::StartApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBatchJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::StartBatchJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::StopApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::M2::UpdateEnvironment', @_);
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
  sub ListAllApplicationVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplicationVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->applicationVersions }, @{ $next_result->applicationVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applicationVersions') foreach (@{ $result->applicationVersions });
        $result = $self->ListApplicationVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applicationVersions') foreach (@{ $result->applicationVersions });
    }

    return undef
  }
  sub ListAllBatchJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBatchJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBatchJobDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->batchJobDefinitions }, @{ $next_result->batchJobDefinitions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'batchJobDefinitions') foreach (@{ $result->batchJobDefinitions });
        $result = $self->ListBatchJobDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'batchJobDefinitions') foreach (@{ $result->batchJobDefinitions });
    }

    return undef
  }
  sub ListAllBatchJobExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBatchJobExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBatchJobExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->batchJobExecutions }, @{ $next_result->batchJobExecutions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'batchJobExecutions') foreach (@{ $result->batchJobExecutions });
        $result = $self->ListBatchJobExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'batchJobExecutions') foreach (@{ $result->batchJobExecutions });
    }

    return undef
  }
  sub ListAllDataSetExportHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSetExportHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSetExportHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataSetExportTasks }, @{ $next_result->dataSetExportTasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSetExportTasks') foreach (@{ $result->dataSetExportTasks });
        $result = $self->ListDataSetExportHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSetExportTasks') foreach (@{ $result->dataSetExportTasks });
    }

    return undef
  }
  sub ListAllDataSetImportHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSetImportHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSetImportHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataSetImportTasks }, @{ $next_result->dataSetImportTasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSetImportTasks') foreach (@{ $result->dataSetImportTasks });
        $result = $self->ListDataSetImportHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSetImportTasks') foreach (@{ $result->dataSetImportTasks });
    }

    return undef
  }
  sub ListAllDataSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSets(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataSets }, @{ $next_result->dataSets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSets') foreach (@{ $result->dataSets });
        $result = $self->ListDataSets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSets') foreach (@{ $result->dataSets });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->deployments }, @{ $next_result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deployments') foreach (@{ $result->deployments });
    }

    return undef
  }
  sub ListAllEngineVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngineVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEngineVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->engineVersions }, @{ $next_result->engineVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'engineVersions') foreach (@{ $result->engineVersions });
        $result = $self->ListEngineVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'engineVersions') foreach (@{ $result->engineVersions });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }


  sub operations { qw/CancelBatchJobExecution CreateApplication CreateDataSetExportTask CreateDataSetImportTask CreateDeployment CreateEnvironment DeleteApplication DeleteApplicationFromEnvironment DeleteEnvironment GetApplication GetApplicationVersion GetBatchJobExecution GetDataSetDetails GetDataSetExportTask GetDataSetImportTask GetDeployment GetEnvironment GetSignedBluinsightsUrl ListApplications ListApplicationVersions ListBatchJobDefinitions ListBatchJobExecutions ListBatchJobRestartPoints ListDataSetExportHistory ListDataSetImportHistory ListDataSets ListDeployments ListEngineVersions ListEnvironments ListTagsForResource StartApplication StartBatchJob StopApplication TagResource UntagResource UpdateApplication UpdateEnvironment / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::M2 - Perl Interface to AWS AWSMainframeModernization

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('M2');
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

Amazon Web Services Mainframe Modernization provides tools and
resources to help you plan and implement migration and modernization
from mainframes to Amazon Web Services managed runtime environments. It
provides tools for analyzing existing mainframe applications,
developing or updating mainframe applications using COBOL or PL/I, and
implementing an automated pipeline for continuous integration and
continuous delivery (CI/CD) of the applications.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28>


=head1 METHODS

=head2 CancelBatchJobExecution

=over

=item ApplicationId => Str

=item ExecutionId => Str

=item [AuthSecretsManagerArn => Str]


=back

Each argument is described in detail in: L<Paws::M2::CancelBatchJobExecution>

Returns: a L<Paws::M2::CancelBatchJobExecutionResponse> instance

Cancels the running of a specific batch job execution.


=head2 CreateApplication

=over

=item Definition => L<Paws::M2::Definition>

=item EngineType => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [RoleArn => Str]

=item [Tags => L<Paws::M2::TagMap>]


=back

Each argument is described in detail in: L<Paws::M2::CreateApplication>

Returns: a L<Paws::M2::CreateApplicationResponse> instance

Creates a new application with given parameters. Requires an existing
runtime environment and application definition file.


=head2 CreateDataSetExportTask

=over

=item ApplicationId => Str

=item ExportConfig => L<Paws::M2::DataSetExportConfig>

=item [ClientToken => Str]

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::M2::CreateDataSetExportTask>

Returns: a L<Paws::M2::CreateDataSetExportTaskResponse> instance

Starts a data set export task for a specific application.


=head2 CreateDataSetImportTask

=over

=item ApplicationId => Str

=item ImportConfig => L<Paws::M2::DataSetImportConfig>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::CreateDataSetImportTask>

Returns: a L<Paws::M2::CreateDataSetImportTaskResponse> instance

Starts a data set import task for a specific application.


=head2 CreateDeployment

=over

=item ApplicationId => Str

=item ApplicationVersion => Int

=item EnvironmentId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::CreateDeployment>

Returns: a L<Paws::M2::CreateDeploymentResponse> instance

Creates and starts a deployment to deploy an application into a runtime
environment.


=head2 CreateEnvironment

=over

=item EngineType => Str

=item InstanceType => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [EngineVersion => Str]

=item [HighAvailabilityConfig => L<Paws::M2::HighAvailabilityConfig>]

=item [KmsKeyId => Str]

=item [NetworkType => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [StorageConfigurations => ArrayRef[L<Paws::M2::StorageConfiguration>]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::M2::TagMap>]


=back

Each argument is described in detail in: L<Paws::M2::CreateEnvironment>

Returns: a L<Paws::M2::CreateEnvironmentResponse> instance

Creates a runtime environment for a given runtime engine.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::M2::DeleteApplication>

Returns: a L<Paws::M2::DeleteApplicationResponse> instance

Deletes a specific application. You cannot delete a running
application.


=head2 DeleteApplicationFromEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::M2::DeleteApplicationFromEnvironment>

Returns: a L<Paws::M2::DeleteApplicationFromEnvironmentResponse> instance

Deletes a specific application from the specific runtime environment
where it was previously deployed. You cannot delete a runtime
environment using DeleteEnvironment if any application has ever been
deployed to it. This API removes the association of the application
with the runtime environment so you can delete the environment
smoothly.


=head2 DeleteEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::M2::DeleteEnvironment>

Returns: a L<Paws::M2::DeleteEnvironmentResponse> instance

Deletes a specific runtime environment. The environment cannot contain
deployed applications. If it does, you must delete those applications
before you delete the environment.


=head2 GetApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetApplication>

Returns: a L<Paws::M2::GetApplicationResponse> instance

Describes the details of a specific application.


=head2 GetApplicationVersion

=over

=item ApplicationId => Str

=item ApplicationVersion => Int


=back

Each argument is described in detail in: L<Paws::M2::GetApplicationVersion>

Returns: a L<Paws::M2::GetApplicationVersionResponse> instance

Returns details about a specific version of a specific application.


=head2 GetBatchJobExecution

=over

=item ApplicationId => Str

=item ExecutionId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetBatchJobExecution>

Returns: a L<Paws::M2::GetBatchJobExecutionResponse> instance

Gets the details of a specific batch job execution for a specific
application.


=head2 GetDataSetDetails

=over

=item ApplicationId => Str

=item DataSetName => Str


=back

Each argument is described in detail in: L<Paws::M2::GetDataSetDetails>

Returns: a L<Paws::M2::GetDataSetDetailsResponse> instance

Gets the details of a specific data set.


=head2 GetDataSetExportTask

=over

=item ApplicationId => Str

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetDataSetExportTask>

Returns: a L<Paws::M2::GetDataSetExportTaskResponse> instance

Gets the status of a data set import task initiated with the
CreateDataSetExportTask operation.


=head2 GetDataSetImportTask

=over

=item ApplicationId => Str

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetDataSetImportTask>

Returns: a L<Paws::M2::GetDataSetImportTaskResponse> instance

Gets the status of a data set import task initiated with the
CreateDataSetImportTask operation.


=head2 GetDeployment

=over

=item ApplicationId => Str

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetDeployment>

Returns: a L<Paws::M2::GetDeploymentResponse> instance

Gets details of a specific deployment with a given deployment
identifier.


=head2 GetEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::M2::GetEnvironment>

Returns: a L<Paws::M2::GetEnvironmentResponse> instance

Describes a specific runtime environment.


=head2 GetSignedBluinsightsUrl

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::M2::GetSignedBluinsightsUrl>

Returns: a L<Paws::M2::GetSignedBluinsightsUrlResponse> instance

Gets a single sign-on URL that can be used to connect to AWS Blu
Insights.


=head2 ListApplications

=over

=item [EnvironmentId => Str]

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListApplications>

Returns: a L<Paws::M2::ListApplicationsResponse> instance

Lists the applications associated with a specific Amazon Web Services
account. You can provide the unique identifier of a specific runtime
environment in a query parameter to see all applications associated
with that environment.


=head2 ListApplicationVersions

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListApplicationVersions>

Returns: a L<Paws::M2::ListApplicationVersionsResponse> instance

Returns a list of the application versions for a specific application.


=head2 ListBatchJobDefinitions

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListBatchJobDefinitions>

Returns: a L<Paws::M2::ListBatchJobDefinitionsResponse> instance

Lists all the available batch job definitions based on the batch job
resources uploaded during the application creation. You can use the
batch job definitions in the list to start a batch job.


=head2 ListBatchJobExecutions

=over

=item ApplicationId => Str

=item [ExecutionIds => ArrayRef[Str|Undef]]

=item [JobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartedAfter => Str]

=item [StartedBefore => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListBatchJobExecutions>

Returns: a L<Paws::M2::ListBatchJobExecutionsResponse> instance

Lists historical, current, and scheduled batch job executions for a
specific application.


=head2 ListBatchJobRestartPoints

=over

=item ApplicationId => Str

=item ExecutionId => Str

=item [AuthSecretsManagerArn => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListBatchJobRestartPoints>

Returns: a L<Paws::M2::ListBatchJobRestartPointsResponse> instance

Lists all the job steps for a JCL file to restart a batch job. This is
only applicable for Micro Focus engine with versions 8.0.6 and above.


=head2 ListDataSetExportHistory

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListDataSetExportHistory>

Returns: a L<Paws::M2::ListDataSetExportHistoryResponse> instance

Lists the data set exports for the specified application.


=head2 ListDataSetImportHistory

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListDataSetImportHistory>

Returns: a L<Paws::M2::ListDataSetImportHistoryResponse> instance

Lists the data set imports for the specified application.


=head2 ListDataSets

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NameFilter => Str]

=item [NextToken => Str]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListDataSets>

Returns: a L<Paws::M2::ListDataSetsResponse> instance

Lists the data sets imported for a specific application. In Amazon Web
Services Mainframe Modernization, data sets are associated with
applications deployed on runtime environments. This is known as
importing data sets. Currently, Amazon Web Services Mainframe
Modernization can import data sets into catalogs using
CreateDataSetImportTask
(https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html).


=head2 ListDeployments

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListDeployments>

Returns: a L<Paws::M2::ListDeploymentsResponse> instance

Returns a list of all deployments of a specific application. A
deployment is a combination of a specific application and a specific
version of that application. Each deployment is mapped to a particular
application version.


=head2 ListEngineVersions

=over

=item [EngineType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListEngineVersions>

Returns: a L<Paws::M2::ListEngineVersionsResponse> instance

Lists the available engine versions.


=head2 ListEnvironments

=over

=item [EngineType => Str]

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::M2::ListEnvironments>

Returns: a L<Paws::M2::ListEnvironmentsResponse> instance

Lists the runtime environments.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::M2::ListTagsForResource>

Returns: a L<Paws::M2::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 StartApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::M2::StartApplication>

Returns: a L<Paws::M2::StartApplicationResponse> instance

Starts an application that is currently stopped.


=head2 StartBatchJob

=over

=item ApplicationId => Str

=item BatchJobIdentifier => L<Paws::M2::BatchJobIdentifier>

=item [AuthSecretsManagerArn => Str]

=item [JobParams => L<Paws::M2::BatchJobParametersMap>]


=back

Each argument is described in detail in: L<Paws::M2::StartBatchJob>

Returns: a L<Paws::M2::StartBatchJobResponse> instance

Starts a batch job and returns the unique identifier of this execution
of the batch job. The associated application must be running in order
to start the batch job.


=head2 StopApplication

=over

=item ApplicationId => Str

=item [ForceStop => Bool]


=back

Each argument is described in detail in: L<Paws::M2::StopApplication>

Returns: a L<Paws::M2::StopApplicationResponse> instance

Stops a running application.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::M2::TagMap>


=back

Each argument is described in detail in: L<Paws::M2::TagResource>

Returns: a L<Paws::M2::TagResourceResponse> instance

Adds one or more tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::M2::UntagResource>

Returns: a L<Paws::M2::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item CurrentApplicationVersion => Int

=item [Definition => L<Paws::M2::Definition>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::M2::UpdateApplication>

Returns: a L<Paws::M2::UpdateApplicationResponse> instance

Updates an application and creates a new version.


=head2 UpdateEnvironment

=over

=item EnvironmentId => Str

=item [ApplyDuringMaintenanceWindow => Bool]

=item [DesiredCapacity => Int]

=item [EngineVersion => Str]

=item [ForceUpdate => Bool]

=item [InstanceType => Str]

=item [PreferredMaintenanceWindow => Str]


=back

Each argument is described in detail in: L<Paws::M2::UpdateEnvironment>

Returns: a L<Paws::M2::UpdateEnvironmentResponse> instance

Updates the configuration details for a specific runtime environment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[EnvironmentId => Str, MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllApplications([EnvironmentId => Str, MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applications, passing the object as the first parameter, and the string 'applications' as the second parameter 

If not, it will return a a L<Paws::M2::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationVersions(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationVersions(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applicationVersions, passing the object as the first parameter, and the string 'applicationVersions' as the second parameter 

If not, it will return a a L<Paws::M2::ListApplicationVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBatchJobDefinitions(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str, Prefix => Str])

=head2 ListAllBatchJobDefinitions(ApplicationId => Str, [MaxResults => Int, NextToken => Str, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - batchJobDefinitions, passing the object as the first parameter, and the string 'batchJobDefinitions' as the second parameter 

If not, it will return a a L<Paws::M2::ListBatchJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBatchJobExecutions(sub { },ApplicationId => Str, [ExecutionIds => ArrayRef[Str|Undef], JobName => Str, MaxResults => Int, NextToken => Str, StartedAfter => Str, StartedBefore => Str, Status => Str])

=head2 ListAllBatchJobExecutions(ApplicationId => Str, [ExecutionIds => ArrayRef[Str|Undef], JobName => Str, MaxResults => Int, NextToken => Str, StartedAfter => Str, StartedBefore => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - batchJobExecutions, passing the object as the first parameter, and the string 'batchJobExecutions' as the second parameter 

If not, it will return a a L<Paws::M2::ListBatchJobExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSetExportHistory(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSetExportHistory(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSetExportTasks, passing the object as the first parameter, and the string 'dataSetExportTasks' as the second parameter 

If not, it will return a a L<Paws::M2::ListDataSetExportHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSetImportHistory(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSetImportHistory(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSetImportTasks, passing the object as the first parameter, and the string 'dataSetImportTasks' as the second parameter 

If not, it will return a a L<Paws::M2::ListDataSetImportHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSets(sub { },ApplicationId => Str, [MaxResults => Int, NameFilter => Str, NextToken => Str, Prefix => Str])

=head2 ListAllDataSets(ApplicationId => Str, [MaxResults => Int, NameFilter => Str, NextToken => Str, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSets, passing the object as the first parameter, and the string 'dataSets' as the second parameter 

If not, it will return a a L<Paws::M2::ListDataSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDeployments(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deployments, passing the object as the first parameter, and the string 'deployments' as the second parameter 

If not, it will return a a L<Paws::M2::ListDeploymentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngineVersions(sub { },[EngineType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEngineVersions([EngineType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - engineVersions, passing the object as the first parameter, and the string 'engineVersions' as the second parameter 

If not, it will return a a L<Paws::M2::ListEngineVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[EngineType => Str, MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllEnvironments([EngineType => Str, MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::M2::ListEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

