
package Paws::DynamoDB::BatchExecuteStatementOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::BatchStatementResponse]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchExecuteStatementOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[L<Paws::DynamoDB::ConsumedCapacity>]

The capacity units consumed by the entire operation. The values of the
list are ordered according to the ordering of the statements.


=head2 Responses => ArrayRef[L<Paws::DynamoDB::BatchStatementResponse>]

The response to each PartiQL statement in the batch. The values of the
list are ordered according to the ordering of the request statements.


=head2 _request_id => Str


=cut

1;