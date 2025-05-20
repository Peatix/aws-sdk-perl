
package Paws::DynamoDB::ExecuteStatementOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteStatementOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>




=head2 Items => ArrayRef[L<Paws::DynamoDB::AttributeMap>]

If a read operation was used, this property will contain the result of
the read operation; a map of attribute names and their values. For the
write operations this value will be empty.


=head2 LastEvaluatedKey => L<Paws::DynamoDB::Key>

The primary key of the item where the operation stopped, inclusive of
the previous result set. Use this value to start a new operation,
excluding this value in the new request. If C<LastEvaluatedKey> is
empty, then the "last page" of results has been processed and there is
no more data to be retrieved. If C<LastEvaluatedKey> is not empty, it
does not necessarily mean that there is more data in the result set.
The only way to know when you have reached the end of the result set is
when C<LastEvaluatedKey> is empty.


=head2 NextToken => Str

If the response of a read request exceeds the response payload limit
DynamoDB will set this value in the response. If set, you can use that
this value in the subsequent request to get the remaining results.


=head2 _request_id => Str


=cut

1;