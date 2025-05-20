
package Paws::Transfer::ListFileTransferResults;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TransferId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFileTransferResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListFileTransferResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListFileTransferResults - Arguments for method ListFileTransferResults on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFileTransferResults on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListFileTransferResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFileTransferResults.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListFileTransferResultsResponse = $transfer->ListFileTransferResults(
      ConnectorId => 'MyConnectorId',
      TransferId  => 'MyTransferId',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $FileTransferResults =
      $ListFileTransferResultsResponse->FileTransferResults;
    my $NextToken = $ListFileTransferResultsResponse->NextToken;

    # Returns a L<Paws::Transfer::ListFileTransferResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListFileTransferResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

A unique identifier for a connector. This value should match the value
supplied to the corresponding C<StartFileTransfer> call.



=head2 MaxResults => Int

The maximum number of files to return in a single page. Note that
currently you can specify a maximum of 10 file paths in a single
StartFileTransfer
(https://docs.aws.amazon.com/transfer/latest/APIReference/API_StartFileTransfer.html)
operation. Thus, the maximum number of file transfer results that can
be returned in a single page is 10.



=head2 NextToken => Str

If there are more file details than returned in this call, use this
value for a subsequent call to C<ListFileTransferResults> to retrieve
them.



=head2 B<REQUIRED> TransferId => Str

A unique identifier for a file transfer. This value should match the
value supplied to the corresponding C<StartFileTransfer> call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFileTransferResults in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

