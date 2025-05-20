
package Paws::Billingconductor::ListResourcesAssociatedToCustomLineItem;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourcesAssociatedToCustomLineItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-resources-associated-to-custom-line-item');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListResourcesAssociatedToCustomLineItem - Arguments for method ListResourcesAssociatedToCustomLineItem on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourcesAssociatedToCustomLineItem on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListResourcesAssociatedToCustomLineItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourcesAssociatedToCustomLineItem.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListResourcesAssociatedToCustomLineItemOutput =
      $billingconductor->ListResourcesAssociatedToCustomLineItem(
      Arn           => 'MyCustomLineItemArn',
      BillingPeriod => 'MyBillingPeriod',       # OPTIONAL
      Filters       => {
        Relationship => 'PARENT',    # values: PARENT, CHILD; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $Arn = $ListResourcesAssociatedToCustomLineItemOutput->Arn;
    my $AssociatedResources =
      $ListResourcesAssociatedToCustomLineItemOutput->AssociatedResources;
    my $NextToken = $ListResourcesAssociatedToCustomLineItemOutput->NextToken;

# Returns a L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListResourcesAssociatedToCustomLineItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the custom line item for which the resource associations
will be listed.



=head2 BillingPeriod => Str

The billing period for which the resource associations will be listed.



=head2 Filters => L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemFilter>

(Optional) A C<ListResourcesAssociatedToCustomLineItemFilter> that can
specify the types of resources that should be retrieved.



=head2 MaxResults => Int

(Optional) The maximum number of resource associations to be retrieved.



=head2 NextToken => Str

(Optional) The pagination token that's returned by a previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourcesAssociatedToCustomLineItem in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

