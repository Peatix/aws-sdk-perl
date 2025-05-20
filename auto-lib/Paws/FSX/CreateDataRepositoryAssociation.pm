
package Paws::FSX::CreateDataRepositoryAssociation;
  use Moose;
  has BatchImportMetaDataOnCreate => (is => 'ro', isa => 'Bool');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataRepositoryPath => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemPath => (is => 'ro', isa => 'Str');
  has ImportedFileChunkSize => (is => 'ro', isa => 'Int');
  has S3 => (is => 'ro', isa => 'Paws::FSX::S3DataRepositoryConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataRepositoryAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateDataRepositoryAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateDataRepositoryAssociation - Arguments for method CreateDataRepositoryAssociation on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataRepositoryAssociation on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateDataRepositoryAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataRepositoryAssociation.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateDataRepositoryAssociationResponse =
      $fsx->CreateDataRepositoryAssociation(
      DataRepositoryPath          => 'MyArchivePath',
      FileSystemId                => 'MyFileSystemId',
      BatchImportMetaDataOnCreate => 1,                         # OPTIONAL
      ClientRequestToken          => 'MyClientRequestToken',    # OPTIONAL
      FileSystemPath              => 'MyNamespace',             # OPTIONAL
      ImportedFileChunkSize       => 1,                         # OPTIONAL
      S3                          => {
        AutoExportPolicy => {
          Events => [
            'NEW', ...    # values: NEW, CHANGED, DELETED
          ],    # max: 3; OPTIONAL
        },    # OPTIONAL
        AutoImportPolicy => {
          Events => [
            'NEW', ...    # values: NEW, CHANGED, DELETED
          ],    # max: 3; OPTIONAL
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
    my $Association = $CreateDataRepositoryAssociationResponse->Association;

    # Returns a L<Paws::FSX::CreateDataRepositoryAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateDataRepositoryAssociation>

=head1 ATTRIBUTES


=head2 BatchImportMetaDataOnCreate => Bool

Set to C<true> to run an import data repository task to import metadata
from the data repository to the file system after the data repository
association is created. Default is C<false>.



=head2 ClientRequestToken => Str





=head2 B<REQUIRED> DataRepositoryPath => Str

The path to the Amazon S3 data repository that will be linked to the
file system. The path can be an S3 bucket or prefix in the format
C<s3://bucket-name/prefix/> (where C<prefix> is optional). This path
specifies where in the S3 data repository files will be imported from
or exported to.



=head2 B<REQUIRED> FileSystemId => Str





=head2 FileSystemPath => Str

A path on the file system that points to a high-level directory (such
as C</ns1/>) or subdirectory (such as C</ns1/subdir/>) that will be
mapped 1-1 with C<DataRepositoryPath>. The leading forward slash in the
name is required. Two data repository associations cannot have
overlapping file system paths. For example, if a data repository is
associated with file system path C</ns1/>, then you cannot link another
data repository with file system path C</ns1/ns2>.

This path specifies where in your file system files will be exported
from or imported to. This file system directory can be linked to only
one Amazon S3 bucket, and no other S3 bucket can be linked to the
directory.

If you specify only a forward slash (C</>) as the file system path, you
can link only one data repository to the file system. You can only
specify "/" as the file system path for the first data repository
associated with a file system.



=head2 ImportedFileChunkSize => Int

For files imported from a data repository, this value determines the
stripe count and maximum amount of data per file (in MiB) stored on a
single physical disk. The maximum number of disks that a single file
can be striped across is limited by the total number of disks that make
up the file system.

The default chunk size is 1,024 MiB (1 GiB) and can go as high as
512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5 TB.



=head2 S3 => L<Paws::FSX::S3DataRepositoryConfiguration>

The configuration for an Amazon S3 data repository linked to an Amazon
FSx Lustre file system with a data repository association. The
configuration defines which file events (new, changed, or deleted files
or directories) are automatically imported from the linked data
repository to the file system or automatically exported from the file
system to the data repository.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataRepositoryAssociation in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

