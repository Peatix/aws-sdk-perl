
package Paws::Billingconductor::BatchAssociateResourcesToCustomLineItemOutput;
  use Moose;
  has FailedAssociatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::AssociateResourceResponseElement]');
  has SuccessfullyAssociatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::AssociateResourceResponseElement]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::BatchAssociateResourcesToCustomLineItemOutput

=head1 ATTRIBUTES


=head2 FailedAssociatedResources => ArrayRef[L<Paws::Billingconductor::AssociateResourceResponseElement>]

A list of C<AssociateResourceResponseElement> for each resource that
failed association to a percentage custom line item.


=head2 SuccessfullyAssociatedResources => ArrayRef[L<Paws::Billingconductor::AssociateResourceResponseElement>]

A list of C<AssociateResourceResponseElement> for each resource that's
been associated to a percentage custom line item successfully.


=head2 _request_id => Str


=cut

