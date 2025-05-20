
package Paws::Billingconductor::DeleteCustomLineItem;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has BillingPeriodRange => (is => 'ro', isa => 'Paws::Billingconductor::CustomLineItemBillingPeriodRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomLineItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-custom-line-item');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::DeleteCustomLineItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DeleteCustomLineItem - Arguments for method DeleteCustomLineItem on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomLineItem on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method DeleteCustomLineItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomLineItem.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $DeleteCustomLineItemOutput = $billingconductor->DeleteCustomLineItem(
      Arn                => 'MyCustomLineItemArn',
      BillingPeriodRange => {
        InclusiveStartBillingPeriod => 'MyBillingPeriod',
        ExclusiveEndBillingPeriod   => 'MyBillingPeriod',
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $DeleteCustomLineItemOutput->Arn;

    # Returns a L<Paws::Billingconductor::DeleteCustomLineItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/DeleteCustomLineItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the custom line item to be deleted.



=head2 BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomLineItem in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

