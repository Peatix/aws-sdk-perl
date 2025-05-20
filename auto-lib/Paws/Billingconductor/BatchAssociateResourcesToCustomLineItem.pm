
package Paws::Billingconductor::BatchAssociateResourcesToCustomLineItem;
  use Moose;
  has BillingPeriodRange => (is => 'ro', isa => 'Paws::Billingconductor::CustomLineItemBillingPeriodRange');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchAssociateResourcesToCustomLineItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batch-associate-resources-to-custom-line-item');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::BatchAssociateResourcesToCustomLineItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::BatchAssociateResourcesToCustomLineItem - Arguments for method BatchAssociateResourcesToCustomLineItem on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAssociateResourcesToCustomLineItem on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method BatchAssociateResourcesToCustomLineItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAssociateResourcesToCustomLineItem.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $BatchAssociateResourcesToCustomLineItemOutput =
      $billingconductor->BatchAssociateResourcesToCustomLineItem(
      ResourceArns       => [ 'MyCustomLineItemAssociationElement', ... ],
      TargetArn          => 'MyCustomLineItemArn',
      BillingPeriodRange => {
        InclusiveStartBillingPeriod => 'MyBillingPeriod',
        ExclusiveEndBillingPeriod   => 'MyBillingPeriod',
      },    # OPTIONAL
      );

    # Results:
    my $FailedAssociatedResources =
      $BatchAssociateResourcesToCustomLineItemOutput->FailedAssociatedResources;
    my $SuccessfullyAssociatedResources =
      $BatchAssociateResourcesToCustomLineItemOutput
      ->SuccessfullyAssociatedResources;

# Returns a L<Paws::Billingconductor::BatchAssociateResourcesToCustomLineItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/BatchAssociateResourcesToCustomLineItem>

=head1 ATTRIBUTES


=head2 BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>





=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

A list containing the ARNs of the resources to be associated.



=head2 B<REQUIRED> TargetArn => Str

A percentage custom line item ARN to associate the resources to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAssociateResourcesToCustomLineItem in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

