
package Paws::Billingconductor::UpdateBillingGroupOutput;
  use Moose;
  has AccountGrouping => (is => 'ro', isa => 'Paws::Billingconductor::UpdateBillingGroupAccountGrouping');
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PricingPlanArn => (is => 'ro', isa => 'Str');
  has PrimaryAccountId => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdateBillingGroupOutput

=head1 ATTRIBUTES


=head2 AccountGrouping => L<Paws::Billingconductor::UpdateBillingGroupAccountGrouping>

Specifies if the billing group has automatic account association
(C<AutoAssociate>) enabled.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the billing group that was updated.


=head2 Description => Str

A description of the billing group.


=head2 LastModifiedTime => Int

The most recent time when the billing group was modified.


=head2 Name => Str

The name of the billing group. The names must be unique to each billing
group.


=head2 PricingPlanArn => Str

The Amazon Resource Name (ARN) of the pricing plan to compute Amazon
Web Services charges for the billing group.


=head2 PrimaryAccountId => Str

The account ID that serves as the main account in a billing group.


=head2 Size => Int

The number of accounts in the particular billing group.


=head2 Status => Str

The status of the billing group. Only one of the valid values can be
used.

Valid values are: C<"ACTIVE">, C<"PRIMARY_ACCOUNT_MISSING">
=head2 StatusReason => Str

The reason why the billing group is in its current status.


=head2 _request_id => Str


=cut

