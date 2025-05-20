
package Paws::Billingconductor::UpdateCustomLineItemOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssociationSize => (is => 'ro', isa => 'Int');
  has BillingGroupArn => (is => 'ro', isa => 'Str');
  has ChargeDetails => (is => 'ro', isa => 'Paws::Billingconductor::ListCustomLineItemChargeDetails');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdateCustomLineItemOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the successfully updated custom line item.


=head2 AssociationSize => Int

The number of resources that are associated to the custom line item.


=head2 BillingGroupArn => Str

The ARN of the billing group that the custom line item is applied to.


=head2 ChargeDetails => L<Paws::Billingconductor::ListCustomLineItemChargeDetails>

A C<ListCustomLineItemChargeDetails> containing the charge details of
the successfully updated custom line item.


=head2 Description => Str

The description of the successfully updated custom line item.


=head2 LastModifiedTime => Int

The most recent time when the custom line item was modified.


=head2 Name => Str

The name of the successfully updated custom line item.


=head2 _request_id => Str


=cut

