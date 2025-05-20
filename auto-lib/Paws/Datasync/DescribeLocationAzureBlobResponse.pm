
package Paws::Datasync::DescribeLocationAzureBlobResponse;
  use Moose;
  has AccessTier => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has BlobType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationAzureBlobResponse

=head1 ATTRIBUTES


=head2 AccessTier => Str

The access tier that you want your objects or files transferred into.
This only applies when using the location as a transfer destination.
For more information, see Access tiers
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers).

Valid values are: C<"HOT">, C<"COOL">, C<"ARCHIVE">
=head2 AgentArns => ArrayRef[Str|Undef]

The ARNs of the DataSync agents that can connect with your Azure Blob
Storage container.


=head2 AuthenticationType => Str

The authentication method DataSync uses to access your Azure Blob
Storage. DataSync can access blob storage using a shared access
signature (SAS).

Valid values are: C<"SAS">
=head2 BlobType => Str

The type of blob that you want your objects or files to be when
transferring them into Azure Blob Storage. Currently, DataSync only
supports moving data into Azure Blob Storage as block blobs. For more
information on blob types, see the Azure Blob Storage documentation
(https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs).

Valid values are: C<"BLOCK">
=head2 CreationTime => Str

The time that your Azure Blob Storage transfer location was created.


=head2 LocationArn => Str

The ARN of your Azure Blob Storage transfer location.


=head2 LocationUri => Str

The URL of the Azure Blob Storage container involved in your transfer.


=head2 _request_id => Str


=cut

1;