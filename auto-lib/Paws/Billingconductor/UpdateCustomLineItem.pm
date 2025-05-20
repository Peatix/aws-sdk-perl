
package Paws::Billingconductor::UpdateCustomLineItem;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has BillingPeriodRange => (is => 'ro', isa => 'Paws::Billingconductor::CustomLineItemBillingPeriodRange');
  has ChargeDetails => (is => 'ro', isa => 'Paws::Billingconductor::UpdateCustomLineItemChargeDetails');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomLineItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-custom-line-item');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::UpdateCustomLineItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdateCustomLineItem - Arguments for method UpdateCustomLineItem on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomLineItem on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method UpdateCustomLineItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomLineItem.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $UpdateCustomLineItemOutput = $billingconductor->UpdateCustomLineItem(
      Arn                => 'MyCustomLineItemArn',
      BillingPeriodRange => {
        InclusiveStartBillingPeriod => 'MyBillingPeriod',
        ExclusiveEndBillingPeriod   => 'MyBillingPeriod',
      },    # OPTIONAL
      ChargeDetails => {
        Flat => {
          ChargeValue => 1,    # max: 1000000

        },    # OPTIONAL
        LineItemFilters => [
          {
            Attribute   => 'LINE_ITEM_TYPE',    # values: LINE_ITEM_TYPE
            MatchOption => 'NOT_EQUAL',         # values: NOT_EQUAL
            Values      => [
              'SAVINGS_PLAN_NEGATION', ...      # values: SAVINGS_PLAN_NEGATION
            ],    # min: 1, max: 1

          },
          ...
        ],    # max: 1; OPTIONAL
        Percentage => {
          PercentageValue => 1,    # max: 10000

        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyCustomLineItemDescription',    # OPTIONAL
      Name        => 'MyCustomLineItemName',           # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateCustomLineItemOutput->Arn;
    my $AssociationSize  = $UpdateCustomLineItemOutput->AssociationSize;
    my $BillingGroupArn  = $UpdateCustomLineItemOutput->BillingGroupArn;
    my $ChargeDetails    = $UpdateCustomLineItemOutput->ChargeDetails;
    my $Description      = $UpdateCustomLineItemOutput->Description;
    my $LastModifiedTime = $UpdateCustomLineItemOutput->LastModifiedTime;
    my $Name             = $UpdateCustomLineItemOutput->Name;

    # Returns a L<Paws::Billingconductor::UpdateCustomLineItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/UpdateCustomLineItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the custom line item to be updated.



=head2 BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>





=head2 ChargeDetails => L<Paws::Billingconductor::UpdateCustomLineItemChargeDetails>

A C<ListCustomLineItemChargeDetails> containing the new charge details
for the custom line item.



=head2 Description => Str

The new line item description of the custom line item.



=head2 Name => Str

The new name for the custom line item.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomLineItem in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

