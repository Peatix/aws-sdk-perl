
package Paws::LakeFormation::StartTransactionResponse;
  use Moose;
  has TransactionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::StartTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionId => Str

An opaque identifier for the transaction.


=head2 _request_id => Str


=cut

