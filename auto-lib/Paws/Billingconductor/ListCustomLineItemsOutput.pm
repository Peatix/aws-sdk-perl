
package Paws::Billingconductor::ListCustomLineItemsOutput;
  use Moose;
  has CustomLineItems => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::CustomLineItemListElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListCustomLineItemsOutput

=head1 ATTRIBUTES


=head2 CustomLineItems => ArrayRef[L<Paws::Billingconductor::CustomLineItemListElement>]

A list of C<FreeFormLineItemListElements> received.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get custom line
items (FFLIs).


=head2 _request_id => Str


=cut

