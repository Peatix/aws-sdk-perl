
package Paws::FSX::CreateDataRepositoryTask;
  use Moose;
  has CapacityToRelease => (is => 'ro', isa => 'Int');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReleaseConfiguration => (is => 'ro', isa => 'Paws::FSX::ReleaseConfiguration');
  has Report => (is => 'ro', isa => 'Paws::FSX::CompletionReport', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataRepositoryTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateDataRepositoryTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateDataRepositoryTask - Arguments for method CreateDataRepositoryTask on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataRepositoryTask on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateDataRepositoryTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataRepositoryTask.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateDataRepositoryTaskResponse = $fsx->CreateDataRepositoryTask(
      FileSystemId => 'MyFileSystemId',
      Report       => {
        Enabled => 1,
        Format => 'REPORT_CSV_20191124', # values: REPORT_CSV_20191124; OPTIONAL
        Path   => 'MyArchivePath',       # min: 3, max: 4357; OPTIONAL
        Scope  => 'FAILED_FILES_ONLY',   # values: FAILED_FILES_ONLY; OPTIONAL
      },
      Type               => 'EXPORT_TO_REPOSITORY',
      CapacityToRelease  => 1,                         # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Paths              => [
        'MyDataRepositoryTaskPath', ...                # max: 4096
      ],    # OPTIONAL
      ReleaseConfiguration => {
        DurationSinceLastAccess => {
          Unit  => 'DAYS',    # values: DAYS; OPTIONAL
          Value => 1,         # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataRepositoryTask =
      $CreateDataRepositoryTaskResponse->DataRepositoryTask;

    # Returns a L<Paws::FSX::CreateDataRepositoryTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateDataRepositoryTask>

=head1 ATTRIBUTES


=head2 CapacityToRelease => Int

Specifies the amount of data to release, in GiB, by an Amazon File
Cache C<AUTO_RELEASE_DATA> task that automatically releases files from
the cache.



=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileSystemId => Str





=head2 Paths => ArrayRef[Str|Undef]

A list of paths for the data repository task to use when the task is
processed. If a path that you provide isn't valid, the task fails. If
you don't provide paths, the default behavior is to export all files to
S3 (for export tasks), import all files from S3 (for import tasks), or
release all exported files that meet the last accessed time criteria
(for release tasks).

=over

=item *

For export tasks, the list contains paths on the FSx for Lustre file
system from which the files are exported to the Amazon S3 bucket. The
default path is the file system root directory. The paths you provide
need to be relative to the mount point of the file system. If the mount
point is C</mnt/fsx> and C</mnt/fsx/path1> is a directory or file on
the file system you want to export, then the path to provide is
C<path1>.

=item *

For import tasks, the list contains paths in the Amazon S3 bucket from
which POSIX metadata changes are imported to the FSx for Lustre file
system. The path can be an S3 bucket or prefix in the format
C<s3://bucket-name/prefix> (where C<prefix> is optional).

=item *

For release tasks, the list contains directory or file paths on the FSx
for Lustre file system from which to release exported files. If a
directory is specified, files within the directory are released. If a
file path is specified, only that file is released. To release all
exported files in the file system, specify a forward slash (/) as the
path.

A file must also meet the last accessed time criteria specified in for
the file to be released.

=back




=head2 ReleaseConfiguration => L<Paws::FSX::ReleaseConfiguration>

The configuration that specifies the last accessed time criteria for
files that will be released from an Amazon FSx for Lustre file system.



=head2 B<REQUIRED> Report => L<Paws::FSX::CompletionReport>

Defines whether or not Amazon FSx provides a CompletionReport once the
task has completed. A CompletionReport provides a detailed report on
the files that Amazon FSx processed that meet the criteria specified by
the C<Scope> parameter. For more information, see Working with Task
Completion Reports
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html).



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]





=head2 B<REQUIRED> Type => Str

Specifies the type of data repository task to create.

=over

=item *

C<EXPORT_TO_REPOSITORY> tasks export from your Amazon FSx for Lustre
file system to a linked data repository.

=item *

C<IMPORT_METADATA_FROM_REPOSITORY> tasks import metadata changes from a
linked S3 bucket to your Amazon FSx for Lustre file system.

=item *

C<RELEASE_DATA_FROM_FILESYSTEM> tasks release files in your Amazon FSx
for Lustre file system that have been exported to a linked S3 bucket
and that meet your specified release criteria.

=item *

C<AUTO_RELEASE_DATA> tasks automatically release files from an Amazon
File Cache resource.

=back


Valid values are: C<"EXPORT_TO_REPOSITORY">, C<"IMPORT_METADATA_FROM_REPOSITORY">, C<"RELEASE_DATA_FROM_FILESYSTEM">, C<"AUTO_RELEASE_DATA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataRepositoryTask in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

