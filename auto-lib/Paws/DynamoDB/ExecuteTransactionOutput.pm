
package Paws::DynamoDB::ExecuteTransactionOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ItemResponse]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteTransactionOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[L<Paws::DynamoDB::ConsumedCapacity>]

The capacity units consumed by the entire operation. The values of the
list are ordered according to the ordering of the statements.


=head2 Responses => ArrayRef[L<Paws::DynamoDB::ItemResponse>]

The response to a PartiQL transaction.


=head2 _request_id => Str


=cut

1;