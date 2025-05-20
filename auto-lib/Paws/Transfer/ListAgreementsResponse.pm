
package Paws::Transfer::ListAgreementsResponse;
  use Moose;
  has Agreements => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedAgreement]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListAgreementsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Agreements => ArrayRef[L<Paws::Transfer::ListedAgreement>]

Returns an array, where each item contains the details of an agreement.


=head2 NextToken => Str

Returns a token that you can use to call C<ListAgreements> again and
receive additional results, if there are any.


=head2 _request_id => Str


=cut

1;