
package Paws::Transfer::StartDirectoryListing;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int');
  has OutputDirectoryPath => (is => 'ro', isa => 'Str', required => 1);
  has RemoteDirectoryPath => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDirectoryListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::StartDirectoryListingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartDirectoryListing - Arguments for method StartDirectoryListing on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDirectoryListing on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method StartDirectoryListing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDirectoryListing.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $StartDirectoryListingResponse = $transfer->StartDirectoryListing(
      ConnectorId         => 'MyConnectorId',
      OutputDirectoryPath => 'MyFilePath',
      RemoteDirectoryPath => 'MyFilePath',
      MaxItems            => 1,                 # OPTIONAL
    );

    # Results:
    my $ListingId      = $StartDirectoryListingResponse->ListingId;
    my $OutputFileName = $StartDirectoryListingResponse->OutputFileName;

    # Returns a L<Paws::Transfer::StartDirectoryListingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/StartDirectoryListing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

The unique identifier for the connector.



=head2 MaxItems => Int

An optional parameter where you can specify the maximum number of
file/directory names to retrieve. The default value is 1,000.



=head2 B<REQUIRED> OutputDirectoryPath => Str

Specifies the path (bucket and prefix) in Amazon S3 storage to store
the results of the directory listing.



=head2 B<REQUIRED> RemoteDirectoryPath => Str

Specifies the directory on the remote SFTP server for which you want to
list its contents.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDirectoryListing in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

