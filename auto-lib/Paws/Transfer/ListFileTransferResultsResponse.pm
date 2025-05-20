
package Paws::Transfer::ListFileTransferResultsResponse;
  use Moose;
  has FileTransferResults => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ConnectorFileTransferResult]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListFileTransferResultsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileTransferResults => ArrayRef[L<Paws::Transfer::ConnectorFileTransferResult>]

Returns the details for the files transferred in the transfer
identified by the C<TransferId> and C<ConnectorId> specified.

=over

=item *

C<FilePath>: the filename and path to where the file was sent to or
retrieved from.

=item *

C<StatusCode>: current status for the transfer. The status returned is
one of the following values:C<QUEUED>, C<IN_PROGRESS>, C<COMPLETED>, or
C<FAILED>

=item *

C<FailureCode>: for transfers that fail, this parameter contains a code
indicating the reason. For example, C<RETRIEVE_FILE_NOT_FOUND>

=item *

C<FailureMessage>: for transfers that fail, this parameter describes
the reason for the failure.

=back



=head2 NextToken => Str

Returns a token that you can use to call C<ListFileTransferResults>
again and receive additional results, if there are any (against the
same C<TransferId>.


=head2 _request_id => Str


=cut

1;