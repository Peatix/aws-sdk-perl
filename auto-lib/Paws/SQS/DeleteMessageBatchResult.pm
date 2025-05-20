
package Paws::SQS::DeleteMessageBatchResult;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SQS::DeleteMessageBatchResultEntry]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SQS::DeleteMessageBatchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[L<Paws::SQS::BatchResultErrorEntry>]

A list of C< BatchResultErrorEntry > items.


=head2 B<REQUIRED> Successful => ArrayRef[L<Paws::SQS::DeleteMessageBatchResultEntry>]

A list of C< DeleteMessageBatchResultEntry > items.


=head2 _request_id => Str


=cut

1;