
package Paws::PaymentCryptography::ListKeysOutput;
  use Moose;
  has Keys => (is => 'ro', isa => 'ArrayRef[Paws::PaymentCryptography::KeySummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ListKeysOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Keys => ArrayRef[L<Paws::PaymentCryptography::KeySummary>]

The list of keys created within the caller's Amazon Web Services
account and Amazon Web Services Region.


=head2 NextToken => Str

The token for the next set of results, or an empty or null value if
there are no more results.


=head2 _request_id => Str


=cut

1;