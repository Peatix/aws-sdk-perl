
package Paws::Billingconductor::CreateCustomLineItem;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has BillingGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has BillingPeriodRange => (is => 'ro', isa => 'Paws::Billingconductor::CustomLineItemBillingPeriodRange');
  has ChargeDetails => (is => 'ro', isa => 'Paws::Billingconductor::CustomLineItemChargeDetails', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Billingconductor::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomLineItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-custom-line-item');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::CreateCustomLineItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::CreateCustomLineItem - Arguments for method CreateCustomLineItem on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomLineItem on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method CreateCustomLineItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomLineItem.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $CreateCustomLineItemOutput = $billingconductor->CreateCustomLineItem(
      BillingGroupArn => 'MyBillingGroupArn',
      ChargeDetails   => {
        Type => 'CREDIT',    # values: CREDIT, FEE
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
          PercentageValue  => 1,    # max: 10000
          AssociatedValues => [ 'MyCustomLineItemAssociationElement', ... ]
          ,                         # max: 5; OPTIONAL
        },    # OPTIONAL
      },
      Description        => 'MyCustomLineItemDescription',
      Name               => 'MyCustomLineItemName',
      AccountId          => 'MyAccountId',                   # OPTIONAL
      BillingPeriodRange => {
        InclusiveStartBillingPeriod => 'MyBillingPeriod',
        ExclusiveEndBillingPeriod   => 'MyBillingPeriod',
      },                                                     # OPTIONAL
      ClientToken => 'MyClientToken',                        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateCustomLineItemOutput->Arn;

    # Returns a L<Paws::Billingconductor::CreateCustomLineItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/CreateCustomLineItem>

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account in which this custom line item will be
applied to.



=head2 B<REQUIRED> BillingGroupArn => Str

The Amazon Resource Name (ARN) that references the billing group where
the custom line item applies to.



=head2 BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>

A time range for which the custom line item is effective.



=head2 B<REQUIRED> ChargeDetails => L<Paws::Billingconductor::CustomLineItemChargeDetails>

A C<CustomLineItemChargeDetails> that describes the charge details for
a custom line item.



=head2 ClientToken => Str

The token that is needed to support idempotency. Idempotency isn't
currently supported, but will be implemented in a future update.



=head2 B<REQUIRED> Description => Str

The description of the custom line item. This is shown on the Bills
page in association with the charge value.



=head2 B<REQUIRED> Name => Str

The name of the custom line item.



=head2 Tags => L<Paws::Billingconductor::TagMap>

A map that contains tag keys and tag values that are attached to a
custom line item.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomLineItem in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

