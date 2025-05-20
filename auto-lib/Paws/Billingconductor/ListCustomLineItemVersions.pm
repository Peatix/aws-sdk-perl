
package Paws::Billingconductor::ListCustomLineItemVersions;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListCustomLineItemVersionsFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomLineItemVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-custom-line-item-versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListCustomLineItemVersionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListCustomLineItemVersions - Arguments for method ListCustomLineItemVersions on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomLineItemVersions on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListCustomLineItemVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomLineItemVersions.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListCustomLineItemVersionsOutput =
      $billingconductor->ListCustomLineItemVersions(
      Arn     => 'MyCustomLineItemArn',
      Filters => {
        BillingPeriodRange => {
          EndBillingPeriod   => 'MyBillingPeriod',    # OPTIONAL
          StartBillingPeriod => 'MyBillingPeriod',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $CustomLineItemVersions =
      $ListCustomLineItemVersionsOutput->CustomLineItemVersions;
    my $NextToken = $ListCustomLineItemVersionsOutput->NextToken;

 # Returns a L<Paws::Billingconductor::ListCustomLineItemVersionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListCustomLineItemVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) for the custom line item.



=head2 Filters => L<Paws::Billingconductor::ListCustomLineItemVersionsFilter>

A C<ListCustomLineItemVersionsFilter> that specifies the billing period
range in which the custom line item versions are applied.



=head2 MaxResults => Int

The maximum number of custom line item versions to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent calls to retrieve custom
line item versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomLineItemVersions in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

