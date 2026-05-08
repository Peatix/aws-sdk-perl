package Paws::FSX;
  use Moose;
  sub service { 'fsx' }
  sub signing_name { 'fsx' }
  sub version { '2018-03-01' }
  sub target_prefix { 'AWSSimbaAPIService_v20180301' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::AssociateFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDataRepositoryTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CancelDataRepositoryTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CopyBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshotAndUpdateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CopySnapshotAndUpdateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataRepositoryAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateDataRepositoryAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataRepositoryTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateDataRepositoryTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateFileCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileSystemFromBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateFileSystemFromBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStorageVirtualMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateStorageVirtualMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVolumeFromBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateVolumeFromBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataRepositoryAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteDataRepositoryAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteFileCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStorageVirtualMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteStorageVirtualMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataRepositoryAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeDataRepositoryAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataRepositoryTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeDataRepositoryTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileCaches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileCaches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileSystems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSharedVpcConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeSharedVpcConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorageVirtualMachines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeStorageVirtualMachines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DisassociateFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseFileSystemNfsV3Locks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::ReleaseFileSystemNfsV3Locks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreVolumeFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::RestoreVolumeFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMisconfiguredStateRecovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::StartMisconfiguredStateRecovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataRepositoryAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateDataRepositoryAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateFileCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSharedVpcConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateSharedVpcConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStorageVirtualMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateStorageVirtualMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBackups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Backups }, @{ $next_result->Backups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Backups') foreach (@{ $result->Backups });
        $result = $self->DescribeBackups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Backups') foreach (@{ $result->Backups });
    }

    return undef
  }
  sub DescribeAllFileSystems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFileSystems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFileSystems(@_, NextToken => $next_result->NextToken);
        push @{ $result->FileSystems }, @{ $next_result->FileSystems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
        $result = $self->DescribeFileSystems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
    }

    return undef
  }
  sub DescribeAllStorageVirtualMachines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStorageVirtualMachines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStorageVirtualMachines(@_, NextToken => $next_result->NextToken);
        push @{ $result->StorageVirtualMachines }, @{ $next_result->StorageVirtualMachines };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StorageVirtualMachines') foreach (@{ $result->StorageVirtualMachines });
        $result = $self->DescribeStorageVirtualMachines(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StorageVirtualMachines') foreach (@{ $result->StorageVirtualMachines });
    }

    return undef
  }
  sub DescribeAllVolumes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Volumes }, @{ $next_result->Volumes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
        $result = $self->DescribeVolumes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
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


  sub operations { qw/AssociateFileSystemAliases CancelDataRepositoryTask CopyBackup CopySnapshotAndUpdateVolume CreateBackup CreateDataRepositoryAssociation CreateDataRepositoryTask CreateFileCache CreateFileSystem CreateFileSystemFromBackup CreateSnapshot CreateStorageVirtualMachine CreateVolume CreateVolumeFromBackup DeleteBackup DeleteDataRepositoryAssociation DeleteFileCache DeleteFileSystem DeleteSnapshot DeleteStorageVirtualMachine DeleteVolume DescribeBackups DescribeDataRepositoryAssociations DescribeDataRepositoryTasks DescribeFileCaches DescribeFileSystemAliases DescribeFileSystems DescribeSharedVpcConfiguration DescribeSnapshots DescribeStorageVirtualMachines DescribeVolumes DisassociateFileSystemAliases ListTagsForResource ReleaseFileSystemNfsV3Locks RestoreVolumeFromSnapshot StartMisconfiguredStateRecovery TagResource UntagResource UpdateDataRepositoryAssociation UpdateFileCache UpdateFileSystem UpdateSharedVpcConfiguration UpdateSnapshot UpdateStorageVirtualMachine UpdateVolume / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX - Perl Interface to AWS Amazon FSx

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FSX');
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

Amazon FSx is a fully managed service that makes it easy for storage
and application administrators to launch and use shared file storage.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateFileSystemAliases

=over

=item Aliases => ArrayRef[Str|Undef]

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::AssociateFileSystemAliases>

Returns: a L<Paws::FSX::AssociateFileSystemAliasesResponse> instance

Use this action to associate one or more Domain Name Server (DNS)
aliases with an existing Amazon FSx for Windows File Server file
system. A file system can have a maximum of 50 DNS aliases associated
with it at any one time. If you try to associate a DNS alias that is
already associated with the file system, FSx takes no action on that
alias in the request. For more information, see Working with DNS
Aliases
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
and Walkthrough 5: Using DNS aliases to access your file system
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
including additional steps you must take to be able to access your file
system using a DNS alias.

The system response shows the DNS aliases that Amazon FSx is attempting
to associate with the file system. Use the API operation to monitor the
status of the aliases Amazon FSx is associating with the file system.


=head2 CancelDataRepositoryTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::FSX::CancelDataRepositoryTask>

Returns: a L<Paws::FSX::CancelDataRepositoryTaskResponse> instance

Cancels an existing Amazon FSx for Lustre data repository task if that
task is in either the C<PENDING> or C<EXECUTING> state. When you cancel
an export task, Amazon FSx does the following.

=over

=item *

Any files that FSx has already exported are not reverted.

=item *

FSx continues to export any files that are in-flight when the cancel
operation is received.

=item *

FSx does not export any files that have not yet been exported.

=back

For a release task, Amazon FSx will stop releasing files upon
cancellation. Any files that have already been released will remain in
the released state.


=head2 CopyBackup

=over

=item SourceBackupId => Str

=item [ClientRequestToken => Str]

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [SourceRegion => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CopyBackup>

Returns: a L<Paws::FSX::CopyBackupResponse> instance

Copies an existing backup within the same Amazon Web Services account
to another Amazon Web Services Region (cross-Region copy) or within the
same Amazon Web Services Region (in-Region copy). You can have up to
five backup copy requests in progress to a single destination Region
per account.

You can use cross-Region backup copies for cross-Region disaster
recovery. You can periodically take backups and copy them to another
Region so that in the event of a disaster in the primary Region, you
can restore from backup and recover availability quickly in the other
Region. You can make cross-Region copies only within your Amazon Web
Services partition. A partition is a grouping of Regions. Amazon Web
Services currently has three partitions: C<aws> (Standard Regions),
C<aws-cn> (China Regions), and C<aws-us-gov> (Amazon Web Services
GovCloud [US] Regions).

You can also use backup copies to clone your file dataset to another
Region or within the same Region.

You can use the C<SourceRegion> parameter to specify the Amazon Web
Services Region from which the backup will be copied. For example, if
you make the call from the C<us-west-1> Region and want to copy a
backup from the C<us-east-2> Region, you specify C<us-east-2> in the
C<SourceRegion> parameter to make a cross-Region copy. If you don't
specify a Region, the backup copy is created in the same Region where
the request is sent from (in-Region copy).

For more information about creating backup copies, see Copying backups
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups)
in the I<Amazon FSx for Windows User Guide>, Copying backups
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups)
in the I<Amazon FSx for Lustre User Guide>, and Copying backups
(https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups)
in the I<Amazon FSx for OpenZFS User Guide>.


=head2 CopySnapshotAndUpdateVolume

=over

=item SourceSnapshotARN => Str

=item VolumeId => Str

=item [ClientRequestToken => Str]

=item [CopyStrategy => Str]

=item [Options => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::CopySnapshotAndUpdateVolume>

Returns: a L<Paws::FSX::CopySnapshotAndUpdateVolumeResponse> instance

Updates an existing volume by using a snapshot from another Amazon FSx
for OpenZFS file system. For more information, see on-demand data
replication
(https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/on-demand-replication.html)
in the Amazon FSx for OpenZFS User Guide.


=head2 CreateBackup

=over

=item [ClientRequestToken => Str]

=item [FileSystemId => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [VolumeId => Str]


=back

Each argument is described in detail in: L<Paws::FSX::CreateBackup>

Returns: a L<Paws::FSX::CreateBackupResponse> instance

Creates a backup of an existing Amazon FSx for Windows File Server file
system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
volume, or Amazon FSx for OpenZFS file system. We recommend creating
regular backups so that you can restore a file system or volume from a
backup if an issue arises with the original file system or volume.

For Amazon FSx for Lustre file systems, you can create a backup only
for file systems that have the following configuration:

=over

=item *

A Persistent deployment type

=item *

Are I<not> linked to a data repository

=back

For more information about backups, see the following:

=over

=item *

For Amazon FSx for Lustre, see Working with FSx for Lustre backups
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

=item *

For Amazon FSx for Windows, see Working with FSx for Windows backups
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

=item *

For Amazon FSx for NetApp ONTAP, see Working with FSx for NetApp ONTAP
backups
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html).

=item *

For Amazon FSx for OpenZFS, see Working with FSx for OpenZFS backups
(https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html).

=back

If a backup with the specified client request token exists and the
parameters match, this operation returns the description of the
existing backup. If a backup with the specified client request token
exists and the parameters don't match, this operation returns
C<IncompatibleParameterError>. If a backup with the specified client
request token doesn't exist, C<CreateBackup> does the following:

=over

=item *

Creates a new Amazon FSx backup with an assigned ID, and an initial
lifecycle state of C<CREATING>.

=item *

Returns the description of the backup.

=back

By using the idempotent operation, you can retry a C<CreateBackup>
operation without the risk of creating an extra backup. This approach
can be useful when an initial call fails in a way that makes it unclear
whether a backup was created. If you use the same client request token
and the initial call created a backup, the operation returns a
successful result because all the parameters are the same.

The C<CreateBackup> operation returns while the backup's lifecycle
state is still C<CREATING>. You can check the backup creation status by
calling the DescribeBackups
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html)
operation, which returns the backup state along with other information.


=head2 CreateDataRepositoryAssociation

=over

=item DataRepositoryPath => Str

=item FileSystemId => Str

=item [BatchImportMetaDataOnCreate => Bool]

=item [ClientRequestToken => Str]

=item [FileSystemPath => Str]

=item [ImportedFileChunkSize => Int]

=item [S3 => L<Paws::FSX::S3DataRepositoryConfiguration>]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateDataRepositoryAssociation>

Returns: a L<Paws::FSX::CreateDataRepositoryAssociationResponse> instance

Creates an Amazon FSx for Lustre data repository association (DRA). A
data repository association is a link between a directory on the file
system and an Amazon S3 bucket or prefix. You can have a maximum of 8
data repository associations on a file system. Data repository
associations are supported on all FSx for Lustre 2.12 and 2.15 file
systems, excluding C<scratch_1> deployment type.

Each data repository association must have a unique Amazon FSx file
system directory and a unique S3 bucket or prefix associated with it.
You can configure a data repository association for automatic import
only, for automatic export only, or for both. To learn more about
linking a data repository to your file system, see Linking your file
system to an S3 bucket
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).

C<CreateDataRepositoryAssociation> isn't supported on Amazon File Cache
resources. To create a DRA on Amazon File Cache, use the
C<CreateFileCache> operation.


=head2 CreateDataRepositoryTask

=over

=item FileSystemId => Str

=item Report => L<Paws::FSX::CompletionReport>

=item Type => Str

=item [CapacityToRelease => Int]

=item [ClientRequestToken => Str]

=item [Paths => ArrayRef[Str|Undef]]

=item [ReleaseConfiguration => L<Paws::FSX::ReleaseConfiguration>]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateDataRepositoryTask>

Returns: a L<Paws::FSX::CreateDataRepositoryTaskResponse> instance

Creates an Amazon FSx for Lustre data repository task. A
C<CreateDataRepositoryTask> operation will fail if a data repository is
not linked to the FSx file system.

You use import and export data repository tasks to perform bulk
operations between your FSx for Lustre file system and its linked data
repositories. An example of a data repository task is exporting any
data and metadata changes, including POSIX metadata, to files,
directories, and symbolic links (symlinks) from your FSx file system to
a linked data repository.

You use release data repository tasks to release data from your file
system for files that are exported to S3. The metadata of released
files remains on the file system so users or applications can still
access released files by reading the files again, which will restore
data from Amazon S3 to the FSx for Lustre file system.

To learn more about data repository tasks, see Data Repository Tasks
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
To learn more about linking a data repository to your file system, see
Linking your file system to an S3 bucket
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).


=head2 CreateFileCache

=over

=item FileCacheType => Str

=item FileCacheTypeVersion => Str

=item StorageCapacity => Int

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [CopyTagsToDataRepositoryAssociations => Bool]

=item [DataRepositoryAssociations => ArrayRef[L<Paws::FSX::FileCacheDataRepositoryAssociation>]]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileCacheLustreConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileCache>

Returns: a L<Paws::FSX::CreateFileCacheResponse> instance

Creates a new Amazon File Cache resource.

You can use this operation with a client request token in the request
that Amazon File Cache uses to ensure idempotent creation. If a cache
with the specified client request token exists and the parameters
match, C<CreateFileCache> returns the description of the existing
cache. If a cache with the specified client request token exists and
the parameters don't match, this call returns
C<IncompatibleParameterError>. If a file cache with the specified
client request token doesn't exist, C<CreateFileCache> does the
following:

=over

=item *

Creates a new, empty Amazon File Cache resource with an assigned ID,
and an initial lifecycle state of C<CREATING>.

=item *

Returns the description of the cache in JSON format.

=back

The C<CreateFileCache> call returns while the cache's lifecycle state
is still C<CREATING>. You can check the cache creation status by
calling the DescribeFileCaches
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html)
operation, which returns the cache state along with other information.


=head2 CreateFileSystem

=over

=item FileSystemType => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [FileSystemTypeVersion => Str]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>]

=item [OntapConfiguration => L<Paws::FSX::CreateFileSystemOntapConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::CreateFileSystemOpenZFSConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileSystem>

Returns: a L<Paws::FSX::CreateFileSystemResponse> instance

Creates a new, empty Amazon FSx file system. You can create the
following supported Amazon FSx file systems using the
C<CreateFileSystem> API operation:

=over

=item *

Amazon FSx for Lustre

=item *

Amazon FSx for NetApp ONTAP

=item *

Amazon FSx for OpenZFS

=item *

Amazon FSx for Windows File Server

=back

This operation requires a client request token in the request that
Amazon FSx uses to ensure idempotent creation. This means that calling
the operation multiple times with the same client request token has no
effect. By using the idempotent operation, you can retry a
C<CreateFileSystem> operation without the risk of creating an extra
file system. This approach can be useful when an initial call fails in
a way that makes it unclear whether a file system was created. Examples
are if a transport level timeout occurred, or your connection was
reset. If you use the same client request token and the initial call
created a file system, the client receives success as long as the
parameters are the same.

If a file system with the specified client request token exists and the
parameters match, C<CreateFileSystem> returns the description of the
existing file system. If a file system with the specified client
request token exists and the parameters don't match, this call returns
C<IncompatibleParameterError>. If a file system with the specified
client request token doesn't exist, C<CreateFileSystem> does the
following:

=over

=item *

Creates a new, empty Amazon FSx file system with an assigned ID, and an
initial lifecycle state of C<CREATING>.

=item *

Returns the description of the file system in JSON format.

=back

The C<CreateFileSystem> call returns while the file system's lifecycle
state is still C<CREATING>. You can check the file-system creation
status by calling the DescribeFileSystems
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
operation, which returns the file system state along with other
information.


=head2 CreateFileSystemFromBackup

=over

=item BackupId => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [FileSystemTypeVersion => Str]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::CreateFileSystemOpenZFSConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileSystemFromBackup>

Returns: a L<Paws::FSX::CreateFileSystemFromBackupResponse> instance

Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
Server, or Amazon FSx for OpenZFS file system from an existing Amazon
FSx backup.

If a file system with the specified client request token exists and the
parameters match, this operation returns the description of the file
system. If a file system with the specified client request token exists
but the parameters don't match, this call returns
C<IncompatibleParameterError>. If a file system with the specified
client request token doesn't exist, this operation does the following:

=over

=item *

Creates a new Amazon FSx file system from backup with an assigned ID,
and an initial lifecycle state of C<CREATING>.

=item *

Returns the description of the file system.

=back

Parameters like the Active Directory, default share name, automatic
backup, and backup settings default to the parameters of the file
system that was backed up, unless overridden. You can explicitly supply
other settings.

By using the idempotent operation, you can retry a
C<CreateFileSystemFromBackup> call without the risk of creating an
extra file system. This approach can be useful when an initial call
fails in a way that makes it unclear whether a file system was created.
Examples are if a transport level timeout occurred, or your connection
was reset. If you use the same client request token and the initial
call created a file system, the client receives a success message as
long as the parameters are the same.

The C<CreateFileSystemFromBackup> call returns while the file system's
lifecycle state is still C<CREATING>. You can check the file-system
creation status by calling the DescribeFileSystems
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
operation, which returns the file system state along with other
information.


=head2 CreateSnapshot

=over

=item Name => Str

=item VolumeId => Str

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateSnapshot>

Returns: a L<Paws::FSX::CreateSnapshotResponse> instance

Creates a snapshot of an existing Amazon FSx for OpenZFS volume. With
snapshots, you can easily undo file changes and compare file versions
by restoring the volume to a previous version.

If a snapshot with the specified client request token exists, and the
parameters match, this operation returns the description of the
existing snapshot. If a snapshot with the specified client request
token exists, and the parameters don't match, this operation returns
C<IncompatibleParameterError>. If a snapshot with the specified client
request token doesn't exist, C<CreateSnapshot> does the following:

=over

=item *

Creates a new OpenZFS snapshot with an assigned ID, and an initial
lifecycle state of C<CREATING>.

=item *

Returns the description of the snapshot.

=back

By using the idempotent operation, you can retry a C<CreateSnapshot>
operation without the risk of creating an extra snapshot. This approach
can be useful when an initial call fails in a way that makes it unclear
whether a snapshot was created. If you use the same client request
token and the initial call created a snapshot, the operation returns a
successful result because all the parameters are the same.

The C<CreateSnapshot> operation returns while the snapshot's lifecycle
state is still C<CREATING>. You can check the snapshot creation status
by calling the DescribeSnapshots
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html)
operation, which returns the snapshot state along with other
information.


=head2 CreateStorageVirtualMachine

=over

=item FileSystemId => Str

=item Name => Str

=item [ActiveDirectoryConfiguration => L<Paws::FSX::CreateSvmActiveDirectoryConfiguration>]

=item [ClientRequestToken => Str]

=item [RootVolumeSecurityStyle => Str]

=item [SvmAdminPassword => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateStorageVirtualMachine>

Returns: a L<Paws::FSX::CreateStorageVirtualMachineResponse> instance

Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP
file system.


=head2 CreateVolume

=over

=item Name => Str

=item VolumeType => Str

=item [ClientRequestToken => Str]

=item [OntapConfiguration => L<Paws::FSX::CreateOntapVolumeConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::CreateOpenZFSVolumeConfiguration>]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateVolume>

Returns: a L<Paws::FSX::CreateVolumeResponse> instance

Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.


=head2 CreateVolumeFromBackup

=over

=item BackupId => Str

=item Name => Str

=item [ClientRequestToken => Str]

=item [OntapConfiguration => L<Paws::FSX::CreateOntapVolumeConfiguration>]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateVolumeFromBackup>

Returns: a L<Paws::FSX::CreateVolumeFromBackupResponse> instance

Creates a new Amazon FSx for NetApp ONTAP volume from an existing
Amazon FSx volume backup.


=head2 DeleteBackup

=over

=item BackupId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteBackup>

Returns: a L<Paws::FSX::DeleteBackupResponse> instance

Deletes an Amazon FSx backup. After deletion, the backup no longer
exists, and its data is gone.

The C<DeleteBackup> call returns instantly. The backup won't show up in
later C<DescribeBackups> calls.

The data in a deleted backup is also deleted and can't be recovered by
any means.


=head2 DeleteDataRepositoryAssociation

=over

=item AssociationId => Str

=item [ClientRequestToken => Str]

=item [DeleteDataInFileSystem => Bool]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteDataRepositoryAssociation>

Returns: a L<Paws::FSX::DeleteDataRepositoryAssociationResponse> instance

Deletes a data repository association on an Amazon FSx for Lustre file
system. Deleting the data repository association unlinks the file
system from the Amazon S3 bucket. When deleting a data repository
association, you have the option of deleting the data in the file
system that corresponds to the data repository association. Data
repository associations are supported on all FSx for Lustre 2.12 and
2.15 file systems, excluding C<scratch_1> deployment type.


=head2 DeleteFileCache

=over

=item FileCacheId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteFileCache>

Returns: a L<Paws::FSX::DeleteFileCacheResponse> instance

Deletes an Amazon File Cache resource. After deletion, the cache no
longer exists, and its data is gone.

The C<DeleteFileCache> operation returns while the cache has the
C<DELETING> status. You can check the cache deletion status by calling
the DescribeFileCaches
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html)
operation, which returns a list of caches in your account. If you pass
the cache ID for a deleted cache, the C<DescribeFileCaches> operation
returns a C<FileCacheNotFound> error.

The data in a deleted cache is also deleted and can't be recovered by
any means.


=head2 DeleteFileSystem

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [LustreConfiguration => L<Paws::FSX::DeleteFileSystemLustreConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::DeleteFileSystemOpenZFSConfiguration>]

=item [WindowsConfiguration => L<Paws::FSX::DeleteFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteFileSystem>

Returns: a L<Paws::FSX::DeleteFileSystemResponse> instance

Deletes a file system. After deletion, the file system no longer
exists, and its data is gone. Any existing automatic backups and
snapshots are also deleted.

To delete an Amazon FSx for NetApp ONTAP file system, first delete all
the volumes and storage virtual machines (SVMs) on the file system.
Then provide a C<FileSystemId> value to the C<DeleteFileSystem>
operation.

By default, when you delete an Amazon FSx for Windows File Server file
system, a final backup is created upon deletion. This final backup
isn't subject to the file system's retention policy, and must be
manually deleted.

To delete an Amazon FSx for Lustre file system, first unmount
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/unmounting-fs.html)
it from every connected Amazon EC2 instance, then provide a
C<FileSystemId> value to the C<DeleteFileSystem> operation. By default,
Amazon FSx will not take a final backup when the C<DeleteFileSystem>
operation is invoked. On file systems not linked to an Amazon S3
bucket, set C<SkipFinalBackup> to C<false> to take a final backup of
the file system you are deleting. Backups cannot be enabled on
S3-linked file systems. To ensure all of your data is written back to
S3 before deleting your file system, you can either monitor for the
AgeOfOldestQueuedMessage
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/monitoring-cloudwatch.html#auto-import-export-metrics)
metric to be zero (if using automatic export) or you can run an export
data repository task
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repo-task-dra.html).
If you have automatic export enabled and want to use an export data
repository task, you have to disable automatic export before executing
the export data repository task.

The C<DeleteFileSystem> operation returns while the file system has the
C<DELETING> status. You can check the file system deletion status by
calling the DescribeFileSystems
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
operation, which returns a list of file systems in your account. If you
pass the file system ID for a deleted file system, the
C<DescribeFileSystems> operation returns a C<FileSystemNotFound> error.

If a data repository task is in a C<PENDING> or C<EXECUTING> state,
deleting an Amazon FSx for Lustre file system will fail with an HTTP
status code 400 (Bad Request).

The data in a deleted file system is also deleted and can't be
recovered by any means.


=head2 DeleteSnapshot

=over

=item SnapshotId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteSnapshot>

Returns: a L<Paws::FSX::DeleteSnapshotResponse> instance

Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the
snapshot no longer exists, and its data is gone. Deleting a snapshot
doesn't affect snapshots stored in a file system backup.

The C<DeleteSnapshot> operation returns instantly. The snapshot appears
with the lifecycle status of C<DELETING> until the deletion is
complete.


=head2 DeleteStorageVirtualMachine

=over

=item StorageVirtualMachineId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteStorageVirtualMachine>

Returns: a L<Paws::FSX::DeleteStorageVirtualMachineResponse> instance

Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM).
Prior to deleting an SVM, you must delete all non-root volumes in the
SVM, otherwise the operation will fail.


=head2 DeleteVolume

=over

=item VolumeId => Str

=item [ClientRequestToken => Str]

=item [OntapConfiguration => L<Paws::FSX::DeleteVolumeOntapConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::DeleteVolumeOpenZFSConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteVolume>

Returns: a L<Paws::FSX::DeleteVolumeResponse> instance

Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
volume.


=head2 DescribeBackups

=over

=item [BackupIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::FSX::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeBackups>

Returns: a L<Paws::FSX::DescribeBackupsResponse> instance

Returns the description of a specific Amazon FSx backup, if a
C<BackupIds> value is provided for that backup. Otherwise, it returns
all backups owned by your Amazon Web Services account in the Amazon Web
Services Region of the endpoint that you're calling.

When retrieving all backups, you can optionally specify the
C<MaxResults> parameter to limit the number of backups in a response.
If more backups remain, Amazon FSx returns a C<NextToken> value in the
response. In this case, send a later request with the C<NextToken>
request parameter set to the value of the C<NextToken> value from the
last response.

This operation is used in an iterative process to retrieve a list of
your backups. C<DescribeBackups> is called first without a C<NextToken>
value. Then the operation continues to be called with the C<NextToken>
parameter set to the value of the last C<NextToken> value until a
response has no C<NextToken> value.

When using this operation, keep the following in mind:

=over

=item *

The operation might return fewer than the C<MaxResults> value of backup
descriptions while still including a C<NextToken> value.

=item *

The order of the backups returned in the response of one
C<DescribeBackups> call and the order of the backups returned across
the responses of a multi-call iteration is unspecified.

=back



=head2 DescribeDataRepositoryAssociations

=over

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::FSX::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeDataRepositoryAssociations>

Returns: a L<Paws::FSX::DescribeDataRepositoryAssociationsResponse> instance

Returns the description of specific Amazon FSx for Lustre or Amazon
File Cache data repository associations, if one or more
C<AssociationIds> values are provided in the request, or if filters are
used in the request. Data repository associations are supported on
Amazon File Cache resources and all FSx for Lustre 2.12 and 2,15 file
systems, excluding C<scratch_1> deployment type.

You can use filters to narrow the response to include just data
repository associations for specific file systems (use the
C<file-system-id> filter with the ID of the file system) or caches (use
the C<file-cache-id> filter with the ID of the cache), or data
repository associations for a specific repository type (use the
C<data-repository-type> filter with a value of C<S3> or C<NFS>). If you
don't use filters, the response returns all data repository
associations owned by your Amazon Web Services account in the Amazon
Web Services Region of the endpoint that you're calling.

When retrieving all data repository associations, you can paginate the
response by using the optional C<MaxResults> parameter to limit the
number of data repository associations returned in a response. If more
data repository associations remain, a C<NextToken> value is returned
in the response. In this case, send a later request with the
C<NextToken> request parameter set to the value of C<NextToken> from
the last response.


=head2 DescribeDataRepositoryTasks

=over

=item [Filters => ArrayRef[L<Paws::FSX::DataRepositoryTaskFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeDataRepositoryTasks>

Returns: a L<Paws::FSX::DescribeDataRepositoryTasksResponse> instance

Returns the description of specific Amazon FSx for Lustre or Amazon
File Cache data repository tasks, if one or more C<TaskIds> values are
provided in the request, or if filters are used in the request. You can
use filters to narrow the response to include just tasks for specific
file systems or caches, or tasks in a specific lifecycle state.
Otherwise, it returns all data repository tasks owned by your Amazon
Web Services account in the Amazon Web Services Region of the endpoint
that you're calling.

When retrieving all tasks, you can paginate the response by using the
optional C<MaxResults> parameter to limit the number of tasks returned
in a response. If more tasks remain, a C<NextToken> value is returned
in the response. In this case, send a later request with the
C<NextToken> request parameter set to the value of C<NextToken> from
the last response.


=head2 DescribeFileCaches

=over

=item [FileCacheIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeFileCaches>

Returns: a L<Paws::FSX::DescribeFileCachesResponse> instance

Returns the description of a specific Amazon File Cache resource, if a
C<FileCacheIds> value is provided for that cache. Otherwise, it returns
descriptions of all caches owned by your Amazon Web Services account in
the Amazon Web Services Region of the endpoint that you're calling.

When retrieving all cache descriptions, you can optionally specify the
C<MaxResults> parameter to limit the number of descriptions in a
response. If more cache descriptions remain, the operation returns a
C<NextToken> value in the response. In this case, send a later request
with the C<NextToken> request parameter set to the value of
C<NextToken> from the last response.

This operation is used in an iterative process to retrieve a list of
your cache descriptions. C<DescribeFileCaches> is called first without
a C<NextToken>value. Then the operation continues to be called with the
C<NextToken> parameter set to the value of the last C<NextToken> value
until a response has no C<NextToken>.

When using this operation, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> cache
descriptions while still including a C<NextToken> value.

=item *

The order of caches returned in the response of one
C<DescribeFileCaches> call and the order of caches returned across the
responses of a multicall iteration is unspecified.

=back



=head2 DescribeFileSystemAliases

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeFileSystemAliases>

Returns: a L<Paws::FSX::DescribeFileSystemAliasesResponse> instance

Returns the DNS aliases that are associated with the specified Amazon
FSx for Windows File Server file system. A history of all DNS aliases
that have been associated with and disassociated from the file system
is available in the list of AdministrativeAction provided in the
DescribeFileSystems operation response.


=head2 DescribeFileSystems

=over

=item [FileSystemIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeFileSystems>

Returns: a L<Paws::FSX::DescribeFileSystemsResponse> instance

Returns the description of specific Amazon FSx file systems, if a
C<FileSystemIds> value is provided for that file system. Otherwise, it
returns descriptions of all file systems owned by your Amazon Web
Services account in the Amazon Web Services Region of the endpoint that
you're calling.

When retrieving all file system descriptions, you can optionally
specify the C<MaxResults> parameter to limit the number of descriptions
in a response. If more file system descriptions remain, Amazon FSx
returns a C<NextToken> value in the response. In this case, send a
later request with the C<NextToken> request parameter set to the value
of C<NextToken> from the last response.

This operation is used in an iterative process to retrieve a list of
your file system descriptions. C<DescribeFileSystems> is called first
without a C<NextToken>value. Then the operation continues to be called
with the C<NextToken> parameter set to the value of the last
C<NextToken> value until a response has no C<NextToken>.

When using this operation, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> file system
descriptions while still including a C<NextToken> value.

=item *

The order of file systems returned in the response of one
C<DescribeFileSystems> call and the order of file systems returned
across the responses of a multicall iteration is unspecified.

=back



=head2 DescribeSharedVpcConfiguration






Each argument is described in detail in: L<Paws::FSX::DescribeSharedVpcConfiguration>

Returns: a L<Paws::FSX::DescribeSharedVpcConfigurationResponse> instance

Indicates whether participant accounts in your organization can create
Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that are
shared by a virtual private cloud (VPC) owner. For more information,
see Creating FSx for ONTAP file systems in shared subnets
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/creating-file-systems.html#fsxn-vpc-shared-subnets).


=head2 DescribeSnapshots

=over

=item [Filters => ArrayRef[L<Paws::FSX::SnapshotFilter>]]

=item [IncludeShared => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeSnapshots>

Returns: a L<Paws::FSX::DescribeSnapshotsResponse> instance

Returns the description of specific Amazon FSx for OpenZFS snapshots,
if a C<SnapshotIds> value is provided. Otherwise, this operation
returns all snapshots owned by your Amazon Web Services account in the
Amazon Web Services Region of the endpoint that you're calling.

When retrieving all snapshots, you can optionally specify the
C<MaxResults> parameter to limit the number of snapshots in a response.
If more backups remain, Amazon FSx returns a C<NextToken> value in the
response. In this case, send a later request with the C<NextToken>
request parameter set to the value of C<NextToken> from the last
response.

Use this operation in an iterative process to retrieve a list of your
snapshots. C<DescribeSnapshots> is called first without a C<NextToken>
value. Then the operation continues to be called with the C<NextToken>
parameter set to the value of the last C<NextToken> value until a
response has no C<NextToken> value.

When using this operation, keep the following in mind:

=over

=item *

The operation might return fewer than the C<MaxResults> value of
snapshot descriptions while still including a C<NextToken> value.

=item *

The order of snapshots returned in the response of one
C<DescribeSnapshots> call and the order of backups returned across the
responses of a multi-call iteration is unspecified.

=back



=head2 DescribeStorageVirtualMachines

=over

=item [Filters => ArrayRef[L<Paws::FSX::StorageVirtualMachineFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StorageVirtualMachineIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeStorageVirtualMachines>

Returns: a L<Paws::FSX::DescribeStorageVirtualMachinesResponse> instance

Describes one or more Amazon FSx for NetApp ONTAP storage virtual
machines (SVMs).


=head2 DescribeVolumes

=over

=item [Filters => ArrayRef[L<Paws::FSX::VolumeFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeVolumes>

Returns: a L<Paws::FSX::DescribeVolumesResponse> instance

Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
OpenZFS volumes.


=head2 DisassociateFileSystemAliases

=over

=item Aliases => ArrayRef[Str|Undef]

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DisassociateFileSystemAliases>

Returns: a L<Paws::FSX::DisassociateFileSystemAliasesResponse> instance

Use this action to disassociate, or remove, one or more Domain Name
Service (DNS) aliases from an Amazon FSx for Windows File Server file
system. If you attempt to disassociate a DNS alias that is not
associated with the file system, Amazon FSx responds with an HTTP
status code 400 (Bad Request). For more information, see Working with
DNS Aliases
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

The system generated response showing the DNS aliases that Amazon FSx
is attempting to disassociate from the file system. Use the API
operation to monitor the status of the aliases Amazon FSx is
disassociating with the file system.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::ListTagsForResource>

Returns: a L<Paws::FSX::ListTagsForResourceResponse> instance

Lists tags for Amazon FSx resources.

When retrieving all tags, you can optionally specify the C<MaxResults>
parameter to limit the number of tags in a response. If more tags
remain, Amazon FSx returns a C<NextToken> value in the response. In
this case, send a later request with the C<NextToken> request parameter
set to the value of C<NextToken> from the last response.

This action is used in an iterative process to retrieve a list of your
tags. C<ListTagsForResource> is called first without a
C<NextToken>value. Then the action continues to be called with the
C<NextToken> parameter set to the value of the last C<NextToken> value
until a response has no C<NextToken>.

When using this action, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> file system
descriptions while still including a C<NextToken> value.

=item *

The order of tags returned in the response of one
C<ListTagsForResource> call and the order of tags returned across the
responses of a multi-call iteration is unspecified.

=back



=head2 ReleaseFileSystemNfsV3Locks

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::ReleaseFileSystemNfsV3Locks>

Returns: a L<Paws::FSX::ReleaseFileSystemNfsV3LocksResponse> instance

Releases the file system lock from an Amazon FSx for OpenZFS file
system.


=head2 RestoreVolumeFromSnapshot

=over

=item SnapshotId => Str

=item VolumeId => Str

=item [ClientRequestToken => Str]

=item [Options => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::RestoreVolumeFromSnapshot>

Returns: a L<Paws::FSX::RestoreVolumeFromSnapshotResponse> instance

Returns an Amazon FSx for OpenZFS volume to the state saved by the
specified snapshot.


=head2 StartMisconfiguredStateRecovery

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::StartMisconfiguredStateRecovery>

Returns: a L<Paws::FSX::StartMisconfiguredStateRecoveryResponse> instance

After performing steps to repair the Active Directory configuration of
an FSx for Windows File Server file system, use this action to initiate
the process of Amazon FSx attempting to reconnect to the file system.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::FSX::Tag>]


=back

Each argument is described in detail in: L<Paws::FSX::TagResource>

Returns: a L<Paws::FSX::TagResourceResponse> instance

Tags an Amazon FSx resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FSX::UntagResource>

Returns: a L<Paws::FSX::UntagResourceResponse> instance

This action removes a tag from an Amazon FSx resource.


=head2 UpdateDataRepositoryAssociation

=over

=item AssociationId => Str

=item [ClientRequestToken => Str]

=item [ImportedFileChunkSize => Int]

=item [S3 => L<Paws::FSX::S3DataRepositoryConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateDataRepositoryAssociation>

Returns: a L<Paws::FSX::UpdateDataRepositoryAssociationResponse> instance

Updates the configuration of an existing data repository association on
an Amazon FSx for Lustre file system. Data repository associations are
supported on all FSx for Lustre 2.12 and 2.15 file systems, excluding
C<scratch_1> deployment type.


=head2 UpdateFileCache

=over

=item FileCacheId => Str

=item [ClientRequestToken => Str]

=item [LustreConfiguration => L<Paws::FSX::UpdateFileCacheLustreConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateFileCache>

Returns: a L<Paws::FSX::UpdateFileCacheResponse> instance

Updates the configuration of an existing Amazon File Cache resource.
You can update multiple properties in a single request.


=head2 UpdateFileSystem

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [FileSystemTypeVersion => Str]

=item [LustreConfiguration => L<Paws::FSX::UpdateFileSystemLustreConfiguration>]

=item [OntapConfiguration => L<Paws::FSX::UpdateFileSystemOntapConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::UpdateFileSystemOpenZFSConfiguration>]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [WindowsConfiguration => L<Paws::FSX::UpdateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateFileSystem>

Returns: a L<Paws::FSX::UpdateFileSystemResponse> instance

Use this operation to update the configuration of an existing Amazon
FSx file system. You can update multiple properties in a single
request.

For FSx for Windows File Server file systems, you can update the
following properties:

=over

=item *

C<AuditLogConfiguration>

=item *

C<AutomaticBackupRetentionDays>

=item *

C<DailyAutomaticBackupStartTime>

=item *

C<SelfManagedActiveDirectoryConfiguration>

=item *

C<StorageCapacity>

=item *

C<StorageType>

=item *

C<ThroughputCapacity>

=item *

C<DiskIopsConfiguration>

=item *

C<WeeklyMaintenanceStartTime>

=back

For FSx for Lustre file systems, you can update the following
properties:

=over

=item *

C<AutoImportPolicy>

=item *

C<AutomaticBackupRetentionDays>

=item *

C<DailyAutomaticBackupStartTime>

=item *

C<DataCompressionType>

=item *

C<FileSystemTypeVersion>

=item *

C<LogConfiguration>

=item *

C<LustreRootSquashConfiguration>

=item *

C<MetadataConfiguration>

=item *

C<PerUnitStorageThroughput>

=item *

C<StorageCapacity>

=item *

C<WeeklyMaintenanceStartTime>

=back

For FSx for ONTAP file systems, you can update the following
properties:

=over

=item *

C<AddRouteTableIds>

=item *

C<AutomaticBackupRetentionDays>

=item *

C<DailyAutomaticBackupStartTime>

=item *

C<DiskIopsConfiguration>

=item *

C<FsxAdminPassword>

=item *

C<HAPairs>

=item *

C<RemoveRouteTableIds>

=item *

C<StorageCapacity>

=item *

C<ThroughputCapacity>

=item *

C<ThroughputCapacityPerHAPair>

=item *

C<WeeklyMaintenanceStartTime>

=back

For FSx for OpenZFS file systems, you can update the following
properties:

=over

=item *

C<AddRouteTableIds>

=item *

C<AutomaticBackupRetentionDays>

=item *

C<CopyTagsToBackups>

=item *

C<CopyTagsToVolumes>

=item *

C<DailyAutomaticBackupStartTime>

=item *

C<DiskIopsConfiguration>

=item *

C<ReadCacheConfiguration>

=item *

C<RemoveRouteTableIds>

=item *

C<StorageCapacity>

=item *

C<ThroughputCapacity>

=item *

C<WeeklyMaintenanceStartTime>

=back



=head2 UpdateSharedVpcConfiguration

=over

=item [ClientRequestToken => Str]

=item [EnableFsxRouteTableUpdatesFromParticipantAccounts => Str]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateSharedVpcConfiguration>

Returns: a L<Paws::FSX::UpdateSharedVpcConfigurationResponse> instance

Configures whether participant accounts in your organization can create
Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that are
shared by a virtual private cloud (VPC) owner. For more information,
see the Amazon FSx for NetApp ONTAP User Guide
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html).

We strongly recommend that participant-created Multi-AZ file systems in
the shared VPC are deleted before you disable this feature. Once the
feature is disabled, these file systems will enter a C<MISCONFIGURED>
state and behave like Single-AZ file systems. For more information, see
Important considerations before disabling shared VPC support for
Multi-AZ file systems
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html#disabling-maz-vpc-sharing).


=head2 UpdateSnapshot

=over

=item Name => Str

=item SnapshotId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateSnapshot>

Returns: a L<Paws::FSX::UpdateSnapshotResponse> instance

Updates the name of an Amazon FSx for OpenZFS snapshot.


=head2 UpdateStorageVirtualMachine

=over

=item StorageVirtualMachineId => Str

=item [ActiveDirectoryConfiguration => L<Paws::FSX::UpdateSvmActiveDirectoryConfiguration>]

=item [ClientRequestToken => Str]

=item [SvmAdminPassword => Str]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateStorageVirtualMachine>

Returns: a L<Paws::FSX::UpdateStorageVirtualMachineResponse> instance

Updates an FSx for ONTAP storage virtual machine (SVM).


=head2 UpdateVolume

=over

=item VolumeId => Str

=item [ClientRequestToken => Str]

=item [Name => Str]

=item [OntapConfiguration => L<Paws::FSX::UpdateOntapVolumeConfiguration>]

=item [OpenZFSConfiguration => L<Paws::FSX::UpdateOpenZFSVolumeConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateVolume>

Returns: a L<Paws::FSX::UpdateVolumeResponse> instance

Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon
FSx for OpenZFS volume.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBackups(sub { },[BackupIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::FSX::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllBackups([BackupIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::FSX::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Backups, passing the object as the first parameter, and the string 'Backups' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeBackupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFileSystems(sub { },[FileSystemIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFileSystems([FileSystemIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FileSystems, passing the object as the first parameter, and the string 'FileSystems' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeFileSystemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStorageVirtualMachines(sub { },[Filters => ArrayRef[L<Paws::FSX::StorageVirtualMachineFilter>], MaxResults => Int, NextToken => Str, StorageVirtualMachineIds => ArrayRef[Str|Undef]])

=head2 DescribeAllStorageVirtualMachines([Filters => ArrayRef[L<Paws::FSX::StorageVirtualMachineFilter>], MaxResults => Int, NextToken => Str, StorageVirtualMachineIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StorageVirtualMachines, passing the object as the first parameter, and the string 'StorageVirtualMachines' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeStorageVirtualMachinesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumes(sub { },[Filters => ArrayRef[L<Paws::FSX::VolumeFilter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumes([Filters => ArrayRef[L<Paws::FSX::VolumeFilter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Volumes, passing the object as the first parameter, and the string 'Volumes' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeVolumesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceARN => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceARN => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::FSX::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

