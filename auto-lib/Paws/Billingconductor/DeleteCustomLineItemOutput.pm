
package Paws::Billingconductor::DeleteCustomLineItemOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DeleteCustomLineItemOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the deleted custom line item.


=head2 _request_id => Str


=cut

