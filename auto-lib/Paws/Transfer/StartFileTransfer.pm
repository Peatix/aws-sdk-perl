
package Paws::Transfer::StartFileTransfer;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);
  has LocalDirectoryPath => (is => 'ro', isa => 'Str');
  has RemoteDirectoryPath => (is => 'ro', isa => 'Str');
  has RetrieveFilePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SendFilePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFileTransfer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::StartFileTransferResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartFileTransfer - Arguments for method StartFileTransfer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFileTransfer on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method StartFileTransfer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFileTransfer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $StartFileTransferResponse = $transfer->StartFileTransfer(
      ConnectorId         => 'MyConnectorId',
      LocalDirectoryPath  => 'MyFilePath',      # OPTIONAL
      RemoteDirectoryPath => 'MyFilePath',      # OPTIONAL
      RetrieveFilePaths   => [
        'MyFilePath', ...                       # min: 1, max: 1024
      ],    # OPTIONAL
      SendFilePaths => [
        'MyFilePath', ...    # min: 1, max: 1024
      ],    # OPTIONAL
    );

    # Results:
    my $TransferId = $StartFileTransferResponse->TransferId;

    # Returns a L<Paws::Transfer::StartFileTransferResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/StartFileTransfer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

The unique identifier for the connector.



=head2 LocalDirectoryPath => Str

For an inbound transfer, the C<LocaDirectoryPath> specifies the
destination for one or more files that are transferred from the
partner's SFTP server.



=head2 RemoteDirectoryPath => Str

For an outbound transfer, the C<RemoteDirectoryPath> specifies the
destination for one or more files that are transferred to the partner's
SFTP server. If you don't specify a C<RemoteDirectoryPath>, the
destination for transferred files is the SFTP user's home directory.



=head2 RetrieveFilePaths => ArrayRef[Str|Undef]

One or more source paths for the partner's SFTP server. Each string
represents a source file path for one inbound file transfer.



=head2 SendFilePaths => ArrayRef[Str|Undef]

One or more source paths for the Amazon S3 storage. Each string
represents a source file path for one outbound file transfer. For
example, C< I<amzn-s3-demo-bucket>/I<myfile.txt> >.

Replace C< I<amzn-s3-demo-bucket> > with one of your actual buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFileTransfer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

