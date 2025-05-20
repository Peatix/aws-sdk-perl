
package Paws::PaymentCryptography::ListAliasesOutput;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::PaymentCryptography::Alias]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ListAliasesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aliases => ArrayRef[L<Paws::PaymentCryptography::Alias>]

The list of aliases. Each alias describes the C<KeyArn> contained
within.


=head2 NextToken => Str

The token for the next set of results, or an empty or null value if
there are no more results.


=head2 _request_id => Str


=cut

1;