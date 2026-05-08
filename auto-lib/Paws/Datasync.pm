package Paws::Datasync;
  use Moose;
  sub service { 'datasync' }
  sub signing_name { 'datasync' }
  sub version { '2018-11-09' }
  sub target_prefix { 'FmrsService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddStorageSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::AddStorageSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CancelTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationAzureBlob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationAzureBlob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationEfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationEfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationFsxLustre {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationFsxLustre', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationFsxOntap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationFsxOntap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationFsxOpenZfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationFsxOpenZfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationFsxWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationFsxWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationHdfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationHdfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDiscoveryJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeDiscoveryJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationAzureBlob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationAzureBlob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationEfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationEfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationFsxLustre {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationFsxLustre', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationFsxOntap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationFsxOntap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationFsxOpenZfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationFsxOpenZfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationFsxWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationFsxWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationHdfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationHdfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorageSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeStorageSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorageSystemResourceMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeStorageSystemResourceMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorageSystemResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeStorageSystemResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::GenerateRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoveryJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListDiscoveryJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStorageSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListStorageSystems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTaskExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveStorageSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::RemoveStorageSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDiscoveryJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::StartDiscoveryJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::StartTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDiscoveryJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::StopDiscoveryJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDiscoveryJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateDiscoveryJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationAzureBlob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationAzureBlob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationEfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationEfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationFsxLustre {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationFsxLustre', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationFsxOntap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationFsxOntap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationFsxOpenZfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationFsxOpenZfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationFsxWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationFsxWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationHdfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationHdfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStorageSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateStorageSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllStorageSystemResourceMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStorageSystemResourceMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStorageSystemResourceMetrics(@_, NextToken => $next_result->NextToken);
        push @{ $result->Metrics }, @{ $next_result->Metrics };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Metrics') foreach (@{ $result->Metrics });
        $result = $self->DescribeStorageSystemResourceMetrics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Metrics') foreach (@{ $result->Metrics });
    }

    return undef
  }
  sub ListAllAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAgents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Agents }, @{ $next_result->Agents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Agents') foreach (@{ $result->Agents });
        $result = $self->ListAgents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Agents') foreach (@{ $result->Agents });
    }

    return undef
  }
  sub ListAllDiscoveryJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDiscoveryJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDiscoveryJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DiscoveryJobs }, @{ $next_result->DiscoveryJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DiscoveryJobs') foreach (@{ $result->DiscoveryJobs });
        $result = $self->ListDiscoveryJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DiscoveryJobs') foreach (@{ $result->DiscoveryJobs });
    }

    return undef
  }
  sub ListAllLocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Locations }, @{ $next_result->Locations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Locations') foreach (@{ $result->Locations });
        $result = $self->ListLocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Locations') foreach (@{ $result->Locations });
    }

    return undef
  }
  sub ListAllStorageSystems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStorageSystems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStorageSystems(@_, NextToken => $next_result->NextToken);
        push @{ $result->StorageSystems }, @{ $next_result->StorageSystems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StorageSystems') foreach (@{ $result->StorageSystems });
        $result = $self->ListStorageSystems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StorageSystems') foreach (@{ $result->StorageSystems });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTaskExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTaskExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TaskExecutions }, @{ $next_result->TaskExecutions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TaskExecutions') foreach (@{ $result->TaskExecutions });
        $result = $self->ListTaskExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TaskExecutions') foreach (@{ $result->TaskExecutions });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tasks }, @{ $next_result->Tasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
        $result = $self->ListTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
    }

    return undef
  }


  sub operations { qw/AddStorageSystem CancelTaskExecution CreateAgent CreateLocationAzureBlob CreateLocationEfs CreateLocationFsxLustre CreateLocationFsxOntap CreateLocationFsxOpenZfs CreateLocationFsxWindows CreateLocationHdfs CreateLocationNfs CreateLocationObjectStorage CreateLocationS3 CreateLocationSmb CreateTask DeleteAgent DeleteLocation DeleteTask DescribeAgent DescribeDiscoveryJob DescribeLocationAzureBlob DescribeLocationEfs DescribeLocationFsxLustre DescribeLocationFsxOntap DescribeLocationFsxOpenZfs DescribeLocationFsxWindows DescribeLocationHdfs DescribeLocationNfs DescribeLocationObjectStorage DescribeLocationS3 DescribeLocationSmb DescribeStorageSystem DescribeStorageSystemResourceMetrics DescribeStorageSystemResources DescribeTask DescribeTaskExecution GenerateRecommendations ListAgents ListDiscoveryJobs ListLocations ListStorageSystems ListTagsForResource ListTaskExecutions ListTasks RemoveStorageSystem StartDiscoveryJob StartTaskExecution StopDiscoveryJob TagResource UntagResource UpdateAgent UpdateDiscoveryJob UpdateLocationAzureBlob UpdateLocationEfs UpdateLocationFsxLustre UpdateLocationFsxOntap UpdateLocationFsxOpenZfs UpdateLocationFsxWindows UpdateLocationHdfs UpdateLocationNfs UpdateLocationObjectStorage UpdateLocationS3 UpdateLocationSmb UpdateStorageSystem UpdateTask UpdateTaskExecution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync - Perl Interface to AWS AWS DataSync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Datasync');
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

DataSync

DataSync is an online data movement and discovery service that
simplifies data migration and helps you quickly, easily, and securely
transfer your file or object data to, from, and between Amazon Web
Services storage services.

This API interface reference includes documentation for using DataSync
programmatically. For complete information, see the I< DataSync User
Guide
(https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)
>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09>


=head1 METHODS

=head2 AddStorageSystem

=over

=item AgentArns => ArrayRef[Str|Undef]

=item ClientToken => Str

=item Credentials => L<Paws::Datasync::Credentials>

=item ServerConfiguration => L<Paws::Datasync::DiscoveryServerConfiguration>

=item SystemType => Str

=item [CloudWatchLogGroupArn => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::AddStorageSystem>

Returns: a L<Paws::Datasync::AddStorageSystemResponse> instance

Creates an Amazon Web Services resource for an on-premises storage
system that you want DataSync Discovery to collect information about.


=head2 CancelTaskExecution

=over

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::CancelTaskExecution>

Returns: a L<Paws::Datasync::CancelTaskExecutionResponse> instance

Stops an DataSync task execution that's in progress. The transfer of
some files are abruptly interrupted. File contents that're transferred
to the destination might be incomplete or inconsistent with the source
files.

However, if you start a new task execution using the same task and
allow it to finish, file content on the destination will be complete
and consistent. This applies to other unexpected failures that
interrupt a task execution. In all of these cases, DataSync
successfully completes the transfer when you start the next task
execution.


=head2 CreateAgent

=over

=item ActivationKey => Str

=item [AgentName => Str]

=item [SecurityGroupArns => ArrayRef[Str|Undef]]

=item [SubnetArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]

=item [VpcEndpointId => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateAgent>

Returns: a L<Paws::Datasync::CreateAgentResponse> instance

Activates an DataSync agent that you deploy in your storage
environment. The activation process associates the agent with your
Amazon Web Services account.

If you haven't deployed an agent yet, see Do I need a DataSync agent?
(https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html)


=head2 CreateLocationAzureBlob

=over

=item AgentArns => ArrayRef[Str|Undef]

=item AuthenticationType => Str

=item ContainerUrl => Str

=item [AccessTier => Str]

=item [BlobType => Str]

=item [SasConfiguration => L<Paws::Datasync::AzureBlobSasConfiguration>]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationAzureBlob>

Returns: a L<Paws::Datasync::CreateLocationAzureBlobResponse> instance

Creates a transfer I<location> for a Microsoft Azure Blob Storage
container. DataSync can use this location as a transfer source or
destination.

Before you begin, make sure you know how DataSync accesses Azure Blob
Storage
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access)
and works with access tiers
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers)
and blob types
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types).
You also need a DataSync agent
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent)
that can connect to your container.


=head2 CreateLocationEfs

=over

=item Ec2Config => L<Paws::Datasync::Ec2Config>

=item EfsFilesystemArn => Str

=item [AccessPointArn => Str]

=item [FileSystemAccessRoleArn => Str]

=item [InTransitEncryption => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationEfs>

Returns: a L<Paws::Datasync::CreateLocationEfsResponse> instance

Creates a transfer I<location> for an Amazon EFS file system. DataSync
can use this location as a source or destination for transferring data.

Before you begin, make sure that you understand how DataSync accesses
Amazon EFS file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access).


=head2 CreateLocationFsxLustre

=over

=item FsxFilesystemArn => Str

=item SecurityGroupArns => ArrayRef[Str|Undef]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationFsxLustre>

Returns: a L<Paws::Datasync::CreateLocationFsxLustreResponse> instance

Creates a transfer I<location> for an Amazon FSx for Lustre file
system. DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
FSx for Lustre file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access).


=head2 CreateLocationFsxOntap

=over

=item Protocol => L<Paws::Datasync::FsxProtocol>

=item SecurityGroupArns => ArrayRef[Str|Undef]

=item StorageVirtualMachineArn => Str

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationFsxOntap>

Returns: a L<Paws::Datasync::CreateLocationFsxOntapResponse> instance

Creates a transfer I<location> for an Amazon FSx for NetApp ONTAP file
system. DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
FSx for ONTAP file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access).


=head2 CreateLocationFsxOpenZfs

=over

=item FsxFilesystemArn => Str

=item Protocol => L<Paws::Datasync::FsxProtocol>

=item SecurityGroupArns => ArrayRef[Str|Undef]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationFsxOpenZfs>

Returns: a L<Paws::Datasync::CreateLocationFsxOpenZfsResponse> instance

Creates a transfer I<location> for an Amazon FSx for OpenZFS file
system. DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
FSx for OpenZFS file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access).

Request parameters related to C<SMB> aren't supported with the
C<CreateLocationFsxOpenZfs> operation.


=head2 CreateLocationFsxWindows

=over

=item FsxFilesystemArn => Str

=item Password => Str

=item SecurityGroupArns => ArrayRef[Str|Undef]

=item User => Str

=item [Domain => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationFsxWindows>

Returns: a L<Paws::Datasync::CreateLocationFsxWindowsResponse> instance

Creates a transfer I<location> for an Amazon FSx for Windows File
Server file system. DataSync can use this location as a source or
destination for transferring data.

Before you begin, make sure that you understand how DataSync accesses
FSx for Windows File Server file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access).


=head2 CreateLocationHdfs

=over

=item AgentArns => ArrayRef[Str|Undef]

=item AuthenticationType => Str

=item NameNodes => ArrayRef[L<Paws::Datasync::HdfsNameNode>]

=item [BlockSize => Int]

=item [KerberosKeytab => Str]

=item [KerberosKrb5Conf => Str]

=item [KerberosPrincipal => Str]

=item [KmsKeyProviderUri => Str]

=item [QopConfiguration => L<Paws::Datasync::QopConfiguration>]

=item [ReplicationFactor => Int]

=item [SimpleUser => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationHdfs>

Returns: a L<Paws::Datasync::CreateLocationHdfsResponse> instance

Creates a transfer I<location> for a Hadoop Distributed File System
(HDFS). DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
HDFS clusters
(https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs).


=head2 CreateLocationNfs

=over

=item OnPremConfig => L<Paws::Datasync::OnPremConfig>

=item ServerHostname => Str

=item Subdirectory => Str

=item [MountOptions => L<Paws::Datasync::NfsMountOptions>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationNfs>

Returns: a L<Paws::Datasync::CreateLocationNfsResponse> instance

Creates a transfer I<location> for a Network File System (NFS) file
server. DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
NFS file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs).


=head2 CreateLocationObjectStorage

=over

=item AgentArns => ArrayRef[Str|Undef]

=item BucketName => Str

=item ServerHostname => Str

=item [AccessKey => Str]

=item [SecretKey => Str]

=item [ServerCertificate => Str]

=item [ServerPort => Int]

=item [ServerProtocol => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationObjectStorage>

Returns: a L<Paws::Datasync::CreateLocationObjectStorageResponse> instance

Creates a transfer I<location> for an object storage system. DataSync
can use this location as a source or destination for transferring data.

Before you begin, make sure that you understand the prerequisites
(https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites)
for DataSync to work with object storage systems.


=head2 CreateLocationS3

=over

=item S3BucketArn => Str

=item S3Config => L<Paws::Datasync::S3Config>

=item [AgentArns => ArrayRef[Str|Undef]]

=item [S3StorageClass => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationS3>

Returns: a L<Paws::Datasync::CreateLocationS3Response> instance

Creates a transfer I<location> for an Amazon S3 bucket. DataSync can
use this location as a source or destination for transferring data.

Before you begin, make sure that you read the following topics:

=over

=item *

Storage class considerations with Amazon S3 locations
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

=item *

Evaluating S3 request costs when using DataSync
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)

=back

For more information, see Configuring transfers with Amazon S3
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html).


=head2 CreateLocationSmb

=over

=item AgentArns => ArrayRef[Str|Undef]

=item ServerHostname => Str

=item Subdirectory => Str

=item [AuthenticationType => Str]

=item [DnsIpAddresses => ArrayRef[Str|Undef]]

=item [Domain => Str]

=item [KerberosKeytab => Str]

=item [KerberosKrb5Conf => Str]

=item [KerberosPrincipal => Str]

=item [MountOptions => L<Paws::Datasync::SmbMountOptions>]

=item [Password => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]

=item [User => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationSmb>

Returns: a L<Paws::Datasync::CreateLocationSmbResponse> instance

Creates a transfer I<location> for a Server Message Block (SMB) file
server. DataSync can use this location as a source or destination for
transferring data.

Before you begin, make sure that you understand how DataSync accesses
SMB file servers. For more information, see Providing DataSync access
to SMB file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions).


=head2 CreateTask

=over

=item DestinationLocationArn => Str

=item SourceLocationArn => Str

=item [CloudWatchLogGroupArn => Str]

=item [Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [Includes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [ManifestConfig => L<Paws::Datasync::ManifestConfig>]

=item [Name => Str]

=item [Options => L<Paws::Datasync::Options>]

=item [Schedule => L<Paws::Datasync::TaskSchedule>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]

=item [TaskMode => Str]

=item [TaskReportConfig => L<Paws::Datasync::TaskReportConfig>]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateTask>

Returns: a L<Paws::Datasync::CreateTaskResponse> instance

Configures a I<task>, which defines where and how DataSync transfers
your data.

A task includes a source location, destination location, and transfer
options (such as bandwidth limits, scheduling, and more).

If you're planning to transfer data to or from an Amazon S3 location,
review how DataSync can affect your S3 request charges
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
and the DataSync pricing page (http://aws.amazon.com/datasync/pricing/)
before you begin.


=head2 DeleteAgent

=over

=item AgentArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteAgent>

Returns: a L<Paws::Datasync::DeleteAgentResponse> instance

Removes an DataSync agent resource from your Amazon Web Services
account.

Keep in mind that this operation (which can't be undone) doesn't remove
the agent's virtual machine (VM) or Amazon EC2 instance from your
storage environment. For next steps, you can delete the VM or instance
from your storage environment or reuse it to activate a new agent
(https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html).


=head2 DeleteLocation

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteLocation>

Returns: a L<Paws::Datasync::DeleteLocationResponse> instance

Deletes a transfer location resource from DataSync.


=head2 DeleteTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteTask>

Returns: a L<Paws::Datasync::DeleteTaskResponse> instance

Deletes a transfer task resource from DataSync.


=head2 DescribeAgent

=over

=item AgentArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeAgent>

Returns: a L<Paws::Datasync::DescribeAgentResponse> instance

Returns information about an DataSync agent, such as its name, service
endpoint type, and status.


=head2 DescribeDiscoveryJob

=over

=item DiscoveryJobArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeDiscoveryJob>

Returns: a L<Paws::Datasync::DescribeDiscoveryJobResponse> instance

Returns information about a DataSync discovery job.


=head2 DescribeLocationAzureBlob

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationAzureBlob>

Returns: a L<Paws::Datasync::DescribeLocationAzureBlobResponse> instance

Provides details about how an DataSync transfer location for Microsoft
Azure Blob Storage is configured.


=head2 DescribeLocationEfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationEfs>

Returns: a L<Paws::Datasync::DescribeLocationEfsResponse> instance

Provides details about how an DataSync transfer location for an Amazon
EFS file system is configured.


=head2 DescribeLocationFsxLustre

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationFsxLustre>

Returns: a L<Paws::Datasync::DescribeLocationFsxLustreResponse> instance

Provides details about how an DataSync transfer location for an Amazon
FSx for Lustre file system is configured.


=head2 DescribeLocationFsxOntap

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationFsxOntap>

Returns: a L<Paws::Datasync::DescribeLocationFsxOntapResponse> instance

Provides details about how an DataSync transfer location for an Amazon
FSx for NetApp ONTAP file system is configured.

If your location uses SMB, the C<DescribeLocationFsxOntap> operation
doesn't actually return a C<Password>.


=head2 DescribeLocationFsxOpenZfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationFsxOpenZfs>

Returns: a L<Paws::Datasync::DescribeLocationFsxOpenZfsResponse> instance

Provides details about how an DataSync transfer location for an Amazon
FSx for OpenZFS file system is configured.

Response elements related to C<SMB> aren't supported with the
C<DescribeLocationFsxOpenZfs> operation.


=head2 DescribeLocationFsxWindows

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationFsxWindows>

Returns: a L<Paws::Datasync::DescribeLocationFsxWindowsResponse> instance

Provides details about how an DataSync transfer location for an Amazon
FSx for Windows File Server file system is configured.


=head2 DescribeLocationHdfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationHdfs>

Returns: a L<Paws::Datasync::DescribeLocationHdfsResponse> instance

Provides details about how an DataSync transfer location for a Hadoop
Distributed File System (HDFS) is configured.


=head2 DescribeLocationNfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationNfs>

Returns: a L<Paws::Datasync::DescribeLocationNfsResponse> instance

Provides details about how an DataSync transfer location for a Network
File System (NFS) file server is configured.


=head2 DescribeLocationObjectStorage

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationObjectStorage>

Returns: a L<Paws::Datasync::DescribeLocationObjectStorageResponse> instance

Provides details about how an DataSync transfer location for an object
storage system is configured.


=head2 DescribeLocationS3

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationS3>

Returns: a L<Paws::Datasync::DescribeLocationS3Response> instance

Provides details about how an DataSync transfer location for an S3
bucket is configured.


=head2 DescribeLocationSmb

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationSmb>

Returns: a L<Paws::Datasync::DescribeLocationSmbResponse> instance

Provides details about how an DataSync transfer location for a Server
Message Block (SMB) file server is configured.


=head2 DescribeStorageSystem

=over

=item StorageSystemArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeStorageSystem>

Returns: a L<Paws::Datasync::DescribeStorageSystemResponse> instance

Returns information about an on-premises storage system that you're
using with DataSync Discovery.


=head2 DescribeStorageSystemResourceMetrics

=over

=item DiscoveryJobArn => Str

=item ResourceId => Str

=item ResourceType => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeStorageSystemResourceMetrics>

Returns: a L<Paws::Datasync::DescribeStorageSystemResourceMetricsResponse> instance

Returns information, including performance data and capacity usage,
which DataSync Discovery collects about a specific resource in
your-premises storage system.


=head2 DescribeStorageSystemResources

=over

=item DiscoveryJobArn => Str

=item ResourceType => Str

=item [Filter => L<Paws::Datasync::ResourceFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeStorageSystemResources>

Returns: a L<Paws::Datasync::DescribeStorageSystemResourcesResponse> instance

Returns information that DataSync Discovery collects about resources in
your on-premises storage system.


=head2 DescribeTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeTask>

Returns: a L<Paws::Datasync::DescribeTaskResponse> instance

Provides information about a I<task>, which defines where and how
DataSync transfers your data.


=head2 DescribeTaskExecution

=over

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeTaskExecution>

Returns: a L<Paws::Datasync::DescribeTaskExecutionResponse> instance

Provides information about an execution of your DataSync task. You can
use this operation to help monitor the progress of an ongoing data
transfer or check the results of the transfer.

Some C<DescribeTaskExecution> response elements are only relevant to a
specific task mode. For information, see Understanding task mode
differences
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences)
and Understanding data transfer performance counters
(https://docs.aws.amazon.com/datasync/latest/userguide/transfer-performance-counters.html).


=head2 GenerateRecommendations

=over

=item DiscoveryJobArn => Str

=item ResourceIds => ArrayRef[Str|Undef]

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Datasync::GenerateRecommendations>

Returns: a L<Paws::Datasync::GenerateRecommendationsResponse> instance

Creates recommendations about where to migrate your data to in Amazon
Web Services. Recommendations are generated based on information that
DataSync Discovery collects about your on-premises storage system's
resources. For more information, see Recommendations provided by
DataSync Discovery
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html).

Once generated, you can view your recommendations by using the
DescribeStorageSystemResources
(https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeStorageSystemResources.html)
operation.


=head2 ListAgents

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListAgents>

Returns: a L<Paws::Datasync::ListAgentsResponse> instance

Returns a list of DataSync agents that belong to an Amazon Web Services
account in the Amazon Web Services Region specified in the request.

With pagination, you can reduce the number of agents returned in a
response. If you get a truncated list of agents in a response, the
response contains a marker that you can specify in your next request to
fetch the next page of agents.

C<ListAgents> is eventually consistent. This means the result of
running the operation might not reflect that you just created or
deleted an agent. For example, if you create an agent with CreateAgent
(https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html)
and then immediately run C<ListAgents>, that agent might not show up in
the list right away. In situations like this, you can always confirm
whether an agent has been created (or deleted) by using DescribeAgent
(https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html).


=head2 ListDiscoveryJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StorageSystemArn => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListDiscoveryJobs>

Returns: a L<Paws::Datasync::ListDiscoveryJobsResponse> instance

Provides a list of the existing discovery jobs in the Amazon Web
Services Region and Amazon Web Services account where you're using
DataSync Discovery.


=head2 ListLocations

=over

=item [Filters => ArrayRef[L<Paws::Datasync::LocationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListLocations>

Returns: a L<Paws::Datasync::ListLocationsResponse> instance

Returns a list of source and destination locations.

If you have more locations than are returned in a response (that is,
the response returns only a truncated list of your agents), the
response contains a token that you can specify in your next request to
fetch the next page of locations.


=head2 ListStorageSystems

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListStorageSystems>

Returns: a L<Paws::Datasync::ListStorageSystemsResponse> instance

Lists the on-premises storage systems that you're using with DataSync
Discovery.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTagsForResource>

Returns: a L<Paws::Datasync::ListTagsForResourceResponse> instance

Returns all the tags associated with an Amazon Web Services resource.


=head2 ListTaskExecutions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskArn => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTaskExecutions>

Returns: a L<Paws::Datasync::ListTaskExecutionsResponse> instance

Returns a list of executions for an DataSync transfer task.


=head2 ListTasks

=over

=item [Filters => ArrayRef[L<Paws::Datasync::TaskFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTasks>

Returns: a L<Paws::Datasync::ListTasksResponse> instance

Returns a list of the DataSync tasks you created.


=head2 RemoveStorageSystem

=over

=item StorageSystemArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::RemoveStorageSystem>

Returns: a L<Paws::Datasync::RemoveStorageSystemResponse> instance

Permanently removes a storage system resource from DataSync Discovery,
including the associated discovery jobs, collected data, and
recommendations.


=head2 StartDiscoveryJob

=over

=item ClientToken => Str

=item CollectionDurationMinutes => Int

=item StorageSystemArn => Str

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::StartDiscoveryJob>

Returns: a L<Paws::Datasync::StartDiscoveryJobResponse> instance

Runs a DataSync discovery job on your on-premises storage system. If
you haven't added the storage system to DataSync Discovery yet, do this
first by using the AddStorageSystem
(https://docs.aws.amazon.com/datasync/latest/userguide/API_AddStorageSystem.html)
operation.


=head2 StartTaskExecution

=over

=item TaskArn => Str

=item [Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [Includes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [ManifestConfig => L<Paws::Datasync::ManifestConfig>]

=item [OverrideOptions => L<Paws::Datasync::Options>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]

=item [TaskReportConfig => L<Paws::Datasync::TaskReportConfig>]


=back

Each argument is described in detail in: L<Paws::Datasync::StartTaskExecution>

Returns: a L<Paws::Datasync::StartTaskExecutionResponse> instance

Starts an DataSync transfer task. For each task, you can only run one
task execution at a time.

There are several steps to a task execution. For more information, see
Task execution statuses
(https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses).

If you're planning to transfer data to or from an Amazon S3 location,
review how DataSync can affect your S3 request charges
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
and the DataSync pricing page (http://aws.amazon.com/datasync/pricing/)
before you begin.


=head2 StopDiscoveryJob

=over

=item DiscoveryJobArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::StopDiscoveryJob>

Returns: a L<Paws::Datasync::StopDiscoveryJobResponse> instance

Stops a running DataSync discovery job.

You can stop a discovery job anytime. A job that's stopped before it's
scheduled to end likely will provide you some information about your
on-premises storage system resources. To get recommendations for a
stopped job, you must use the GenerateRecommendations
(https://docs.aws.amazon.com/datasync/latest/userguide/API_GenerateRecommendations.html)
operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]


=back

Each argument is described in detail in: L<Paws::Datasync::TagResource>

Returns: a L<Paws::Datasync::TagResourceResponse> instance

Applies a I<tag> to an Amazon Web Services resource. Tags are key-value
pairs that can help you manage, filter, and search for your resources.

These include DataSync resources, such as locations, tasks, and task
executions.


=head2 UntagResource

=over

=item Keys => ArrayRef[Str|Undef]

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::UntagResource>

Returns: a L<Paws::Datasync::UntagResourceResponse> instance

Removes tags from an Amazon Web Services resource.


=head2 UpdateAgent

=over

=item AgentArn => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateAgent>

Returns: a L<Paws::Datasync::UpdateAgentResponse> instance

Updates the name of an DataSync agent.


=head2 UpdateDiscoveryJob

=over

=item CollectionDurationMinutes => Int

=item DiscoveryJobArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateDiscoveryJob>

Returns: a L<Paws::Datasync::UpdateDiscoveryJobResponse> instance

Edits a DataSync discovery job configuration.


=head2 UpdateLocationAzureBlob

=over

=item LocationArn => Str

=item [AccessTier => Str]

=item [AgentArns => ArrayRef[Str|Undef]]

=item [AuthenticationType => Str]

=item [BlobType => Str]

=item [SasConfiguration => L<Paws::Datasync::AzureBlobSasConfiguration>]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationAzureBlob>

Returns: a L<Paws::Datasync::UpdateLocationAzureBlobResponse> instance

Modifies the following configurations of the Microsoft Azure Blob
Storage transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with Azure
Blob Storage
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html).


=head2 UpdateLocationEfs

=over

=item LocationArn => Str

=item [AccessPointArn => Str]

=item [FileSystemAccessRoleArn => Str]

=item [InTransitEncryption => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationEfs>

Returns: a L<Paws::Datasync::UpdateLocationEfsResponse> instance

Modifies the following configuration parameters of the Amazon EFS
transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with Amazon
EFS
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html).


=head2 UpdateLocationFsxLustre

=over

=item LocationArn => Str

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationFsxLustre>

Returns: a L<Paws::Datasync::UpdateLocationFsxLustreResponse> instance

Modifies the following configuration parameters of the Amazon FSx for
Lustre transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with FSx for
Lustre
(https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html).


=head2 UpdateLocationFsxOntap

=over

=item LocationArn => Str

=item [Protocol => L<Paws::Datasync::FsxUpdateProtocol>]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationFsxOntap>

Returns: a L<Paws::Datasync::UpdateLocationFsxOntapResponse> instance

Modifies the following configuration parameters of the Amazon FSx for
NetApp ONTAP transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with FSx for
ONTAP
(https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html).


=head2 UpdateLocationFsxOpenZfs

=over

=item LocationArn => Str

=item [Protocol => L<Paws::Datasync::FsxProtocol>]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationFsxOpenZfs>

Returns: a L<Paws::Datasync::UpdateLocationFsxOpenZfsResponse> instance

Modifies the following configuration parameters of the Amazon FSx for
OpenZFS transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with FSx for
OpenZFS
(https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html).

Request parameters related to C<SMB> aren't supported with the
C<UpdateLocationFsxOpenZfs> operation.


=head2 UpdateLocationFsxWindows

=over

=item LocationArn => Str

=item [Domain => Str]

=item [Password => Str]

=item [Subdirectory => Str]

=item [User => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationFsxWindows>

Returns: a L<Paws::Datasync::UpdateLocationFsxWindowsResponse> instance

Modifies the following configuration parameters of the Amazon FSx for
Windows File Server transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with FSx for
Windows File Server
(https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html).


=head2 UpdateLocationHdfs

=over

=item LocationArn => Str

=item [AgentArns => ArrayRef[Str|Undef]]

=item [AuthenticationType => Str]

=item [BlockSize => Int]

=item [KerberosKeytab => Str]

=item [KerberosKrb5Conf => Str]

=item [KerberosPrincipal => Str]

=item [KmsKeyProviderUri => Str]

=item [NameNodes => ArrayRef[L<Paws::Datasync::HdfsNameNode>]]

=item [QopConfiguration => L<Paws::Datasync::QopConfiguration>]

=item [ReplicationFactor => Int]

=item [SimpleUser => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationHdfs>

Returns: a L<Paws::Datasync::UpdateLocationHdfsResponse> instance

Modifies the following configuration parameters of the Hadoop
Distributed File System (HDFS) transfer location that you're using with
DataSync.

For more information, see Configuring DataSync transfers with an HDFS
cluster
(https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html).


=head2 UpdateLocationNfs

=over

=item LocationArn => Str

=item [MountOptions => L<Paws::Datasync::NfsMountOptions>]

=item [OnPremConfig => L<Paws::Datasync::OnPremConfig>]

=item [ServerHostname => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationNfs>

Returns: a L<Paws::Datasync::UpdateLocationNfsResponse> instance

Modifies the following configuration parameters of the Network File
System (NFS) transfer location that you're using with DataSync.

For more information, see Configuring transfers with an NFS file server
(https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).


=head2 UpdateLocationObjectStorage

=over

=item LocationArn => Str

=item [AccessKey => Str]

=item [AgentArns => ArrayRef[Str|Undef]]

=item [SecretKey => Str]

=item [ServerCertificate => Str]

=item [ServerHostname => Str]

=item [ServerPort => Int]

=item [ServerProtocol => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationObjectStorage>

Returns: a L<Paws::Datasync::UpdateLocationObjectStorageResponse> instance

Modifies the following configuration parameters of the object storage
transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with an object
storage system
(https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).


=head2 UpdateLocationS3

=over

=item LocationArn => Str

=item [S3Config => L<Paws::Datasync::S3Config>]

=item [S3StorageClass => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationS3>

Returns: a L<Paws::Datasync::UpdateLocationS3Response> instance

Modifies the following configuration parameters of the Amazon S3
transfer location that you're using with DataSync.

Before you begin, make sure that you read the following topics:

=over

=item *

Storage class considerations with Amazon S3 locations
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

=item *

Evaluating S3 request costs when using DataSync
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)

=back



=head2 UpdateLocationSmb

=over

=item LocationArn => Str

=item [AgentArns => ArrayRef[Str|Undef]]

=item [AuthenticationType => Str]

=item [DnsIpAddresses => ArrayRef[Str|Undef]]

=item [Domain => Str]

=item [KerberosKeytab => Str]

=item [KerberosKrb5Conf => Str]

=item [KerberosPrincipal => Str]

=item [MountOptions => L<Paws::Datasync::SmbMountOptions>]

=item [Password => Str]

=item [ServerHostname => Str]

=item [Subdirectory => Str]

=item [User => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationSmb>

Returns: a L<Paws::Datasync::UpdateLocationSmbResponse> instance

Modifies the following configuration parameters of the Server Message
Block (SMB) transfer location that you're using with DataSync.

For more information, see Configuring DataSync transfers with an SMB
file server
(https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).


=head2 UpdateStorageSystem

=over

=item StorageSystemArn => Str

=item [AgentArns => ArrayRef[Str|Undef]]

=item [CloudWatchLogGroupArn => Str]

=item [Credentials => L<Paws::Datasync::Credentials>]

=item [Name => Str]

=item [ServerConfiguration => L<Paws::Datasync::DiscoveryServerConfiguration>]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateStorageSystem>

Returns: a L<Paws::Datasync::UpdateStorageSystemResponse> instance

Modifies some configurations of an on-premises storage system resource
that you're using with DataSync Discovery.


=head2 UpdateTask

=over

=item TaskArn => Str

=item [CloudWatchLogGroupArn => Str]

=item [Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [Includes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [ManifestConfig => L<Paws::Datasync::ManifestConfig>]

=item [Name => Str]

=item [Options => L<Paws::Datasync::Options>]

=item [Schedule => L<Paws::Datasync::TaskSchedule>]

=item [TaskReportConfig => L<Paws::Datasync::TaskReportConfig>]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateTask>

Returns: a L<Paws::Datasync::UpdateTaskResponse> instance

Updates the configuration of a I<task>, which defines where and how
DataSync transfers your data.


=head2 UpdateTaskExecution

=over

=item Options => L<Paws::Datasync::Options>

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateTaskExecution>

Returns: a L<Paws::Datasync::UpdateTaskExecutionResponse> instance

Updates the configuration of a running DataSync task execution.

Currently, the only C<Option> that you can modify with
C<UpdateTaskExecution> is C< BytesPerSecond
(https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)
>, which throttles bandwidth for a running or queued task execution.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllStorageSystemResourceMetrics(sub { },DiscoveryJobArn => Str, ResourceId => Str, ResourceType => Str, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 DescribeAllStorageSystemResourceMetrics(DiscoveryJobArn => Str, ResourceId => Str, ResourceType => Str, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Metrics, passing the object as the first parameter, and the string 'Metrics' as the second parameter 

If not, it will return a a L<Paws::Datasync::DescribeStorageSystemResourceMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgents(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAgents([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Agents, passing the object as the first parameter, and the string 'Agents' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDiscoveryJobs(sub { },[MaxResults => Int, NextToken => Str, StorageSystemArn => Str])

=head2 ListAllDiscoveryJobs([MaxResults => Int, NextToken => Str, StorageSystemArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DiscoveryJobs, passing the object as the first parameter, and the string 'DiscoveryJobs' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListDiscoveryJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLocations(sub { },[Filters => ArrayRef[L<Paws::Datasync::LocationFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLocations([Filters => ArrayRef[L<Paws::Datasync::LocationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Locations, passing the object as the first parameter, and the string 'Locations' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListLocationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStorageSystems(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStorageSystems([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StorageSystems, passing the object as the first parameter, and the string 'StorageSystems' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListStorageSystemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskExecutions(sub { },[MaxResults => Int, NextToken => Str, TaskArn => Str])

=head2 ListAllTaskExecutions([MaxResults => Int, NextToken => Str, TaskArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaskExecutions, passing the object as the first parameter, and the string 'TaskExecutions' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTaskExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },[Filters => ArrayRef[L<Paws::Datasync::TaskFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllTasks([Filters => ArrayRef[L<Paws::Datasync::TaskFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tasks, passing the object as the first parameter, and the string 'Tasks' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

