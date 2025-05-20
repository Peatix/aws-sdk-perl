
package Paws::S3Control::ListCallerAccessGrantsResult;
  use Moose;
  has CallerAccessGrantsList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListCallerAccessGrantsEntry]', request_name => 'AccessGrant', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListCallerAccessGrantsResult

=head1 ATTRIBUTES


=head2 CallerAccessGrantsList => ArrayRef[L<Paws::S3Control::ListCallerAccessGrantsEntry>]

A list of the caller's access grants that were created using S3 Access
Grants and that grant the caller access to the S3 data of the Amazon
Web Services account ID that was specified in the request.



=head2 NextToken => Str

A pagination token that you can use to request the next page of
results. Pass this value into a subsequent C<List Caller Access Grants>
request in order to retrieve the next page of results.




=cut

