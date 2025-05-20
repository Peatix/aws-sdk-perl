
package Paws::PaymentCryptography::RestoreKeyOutput;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::PaymentCryptography::Key', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::RestoreKeyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => L<Paws::PaymentCryptography::Key>

The key material of the restored key. The C<KeyState> will change to
C<CREATE_COMPLETE> and value for C<DeletePendingTimestamp> gets
removed.


=head2 _request_id => Str


=cut

1;