
package Paws::Billingconductor::AssociateAccountsOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::AssociateAccountsOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the billing group that associates the
array of account IDs.


=head2 _request_id => Str


=cut

