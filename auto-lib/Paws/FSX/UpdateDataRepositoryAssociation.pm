
package Paws::FSX::UpdateDataRepositoryAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has ImportedFileChunkSize => (is => 'ro', isa => 'Int');
  has S3 => (is => 'ro', isa => 'Paws::FSX::S3DataRepositoryConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataRepositoryAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateDataRepositoryAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateDataRepositoryAssociation - Arguments for method UpdateDataRepositoryAssociation on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataRepositoryAssociation on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateDataRepositoryAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataRepositoryAssociation.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateDataRepositoryAssociationResponse =
      $fsx->UpdateDataRepositoryAssociation(
      AssociationId         => 'MyDataRepositoryAssociationId',
      ClientRequestToken    => 'MyClientRequestToken',            # OPTIONAL
      ImportedFileChunkSize => 1,                                 # OPTIONAL
      S3                    => {
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
      );

    # Results:
    my $Association = $UpdateDataRepositoryAssociationResponse->Association;

    # Returns a L<Paws::FSX::UpdateDataRepositoryAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateDataRepositoryAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the data repository association that you are updating.



=head2 ClientRequestToken => Str





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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataRepositoryAssociation in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

