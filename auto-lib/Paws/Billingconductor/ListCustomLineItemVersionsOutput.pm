
package Paws::Billingconductor::ListCustomLineItemVersionsOutput;
  use Moose;
  has CustomLineItemVersions => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::CustomLineItemVersionListElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListCustomLineItemVersionsOutput

=head1 ATTRIBUTES


=head2 CustomLineItemVersions => ArrayRef[L<Paws::Billingconductor::CustomLineItemVersionListElement>]

A list of C<CustomLineItemVersionListElements> that are received.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to retrieve custom
line item versions.


=head2 _request_id => Str


=cut

