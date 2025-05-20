
package Paws::SNS::PublishBatchResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SNS::BatchResultErrorEntry]');
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SNS::PublishBatchResultEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::PublishBatchResponse

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::SNS::BatchResultErrorEntry>]

A list of failed C<PublishBatch> responses.


=head2 Successful => ArrayRef[L<Paws::SNS::PublishBatchResultEntry>]

A list of successful C<PublishBatch> responses.


=head2 _request_id => Str


=cut

