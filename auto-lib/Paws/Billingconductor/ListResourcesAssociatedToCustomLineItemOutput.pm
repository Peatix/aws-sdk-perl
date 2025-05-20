
package Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssociatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemResponseElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The custom line item ARN for which the resource associations are
listed.


=head2 AssociatedResources => ArrayRef[L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemResponseElement>]

A list of C<ListResourcesAssociatedToCustomLineItemResponseElement> for
each resource association retrieved.


=head2 NextToken => Str

The pagination token to be used in subsequent requests to retrieve
additional results.


=head2 _request_id => Str


=cut

