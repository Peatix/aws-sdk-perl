
package Paws::Billingconductor::BatchDisassociateResourcesFromCustomLineItemOutput;
  use Moose;
  has FailedDisassociatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::DisassociateResourceResponseElement]');
  has SuccessfullyDisassociatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::DisassociateResourceResponseElement]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::BatchDisassociateResourcesFromCustomLineItemOutput

=head1 ATTRIBUTES


=head2 FailedDisassociatedResources => ArrayRef[L<Paws::Billingconductor::DisassociateResourceResponseElement>]

A list of C<DisassociateResourceResponseElement> for each resource that
failed disassociation from a percentage custom line item.


=head2 SuccessfullyDisassociatedResources => ArrayRef[L<Paws::Billingconductor::DisassociateResourceResponseElement>]

A list of C<DisassociateResourceResponseElement> for each resource
that's been disassociated from a percentage custom line item
successfully.


=head2 _request_id => Str


=cut

