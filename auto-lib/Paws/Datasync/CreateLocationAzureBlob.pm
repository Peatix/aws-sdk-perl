
package Paws::Datasync::CreateLocationAzureBlob;
  use Moose;
  has AccessTier => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has BlobType => (is => 'ro', isa => 'Str');
  has ContainerUrl => (is => 'ro', isa => 'Str', required => 1);
  has SasConfiguration => (is => 'ro', isa => 'Paws::Datasync::AzureBlobSasConfiguration');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationAzureBlob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationAzureBlobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationAzureBlob - Arguments for method CreateLocationAzureBlob on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationAzureBlob on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationAzureBlob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationAzureBlob.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationAzureBlobResponse = $datasync->CreateLocationAzureBlob(
      AgentArns => [
        'MyAgentArn', ...    # max: 128
      ],
      AuthenticationType => 'SAS',
      ContainerUrl       => 'MyAzureBlobContainerUrl',
      AccessTier         => 'HOT',                       # OPTIONAL
      BlobType           => 'BLOCK',                     # OPTIONAL
      SasConfiguration   => {
        Token => 'MyAzureBlobSasToken',                  # min: 1, max: 255

      },    # OPTIONAL
      Subdirectory => 'MyAzureBlobSubdirectory',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationAzureBlobResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationAzureBlobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationAzureBlob>

=head1 ATTRIBUTES


=head2 AccessTier => Str

Specifies the access tier that you want your objects or files
transferred into. This only applies when using the location as a
transfer destination. For more information, see Access tiers
(https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers).

Valid values are: C<"HOT">, C<"COOL">, C<"ARCHIVE">

=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Name (ARN) of the DataSync agent that can
connect with your Azure Blob Storage container.

You can specify more than one agent. For more information, see Using
multiple agents for your transfer
(https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html).



=head2 B<REQUIRED> AuthenticationType => Str

Specifies the authentication method DataSync uses to access your Azure
Blob Storage. DataSync can access blob storage using a shared access
signature (SAS).

Valid values are: C<"SAS">

=head2 BlobType => Str

Specifies the type of blob that you want your objects or files to be
when transferring them into Azure Blob Storage. Currently, DataSync
only supports moving data into Azure Blob Storage as block blobs. For
more information on blob types, see the Azure Blob Storage
documentation
(https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs).

Valid values are: C<"BLOCK">

=head2 B<REQUIRED> ContainerUrl => Str

Specifies the URL of the Azure Blob Storage container involved in your
transfer.



=head2 SasConfiguration => L<Paws::Datasync::AzureBlobSasConfiguration>

Specifies the SAS configuration that allows DataSync to access your
Azure Blob Storage.



=head2 Subdirectory => Str

Specifies path segments if you want to limit your transfer to a virtual
directory in your container (for example, C</my/images>).



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your transfer location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationAzureBlob in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

