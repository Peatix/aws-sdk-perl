
package Paws::Pricing::ListPriceLists;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', required => 1);
  has EffectiveDate => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionCode => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPriceLists');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pricing::ListPriceListsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::ListPriceLists - Arguments for method ListPriceLists on L<Paws::Pricing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPriceLists on the
L<AWS Price List Service|Paws::Pricing> service. Use the attributes of this class
as arguments to method ListPriceLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPriceLists.

=head1 SYNOPSIS

    my $api.pricing = Paws->service('Pricing');
    my $ListPriceListsResponse = $api . pricing->ListPriceLists(
      CurrencyCode  => 'MyCurrencyCode',
      EffectiveDate => '1970-01-01T01:00:00',
      ServiceCode   => 'MyServiceCode',
      MaxResults    => 1,                       # OPTIONAL
      NextToken     => 'MyString',              # OPTIONAL
      RegionCode    => 'MyRegionCode',          # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListPriceListsResponse->NextToken;
    my $PriceLists = $ListPriceListsResponse->PriceLists;

    # Returns a L<Paws::Pricing::ListPriceListsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrencyCode => Str

The three alphabetical character ISO-4217 currency code that the Price
List files are denominated in.



=head2 B<REQUIRED> EffectiveDate => Str

The date that the Price List file prices are effective from.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 RegionCode => Str

This is used to filter the Price List by Amazon Web Services Region.
For example, to get the price list only for the C<US East (N.
Virginia)> Region, use C<us-east-1>. If nothing is specified, you
retrieve price lists for all applicable Regions. The available
C<RegionCode> list can be retrieved from GetAttributeValues
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html)
API.



=head2 B<REQUIRED> ServiceCode => Str

The service code or the Savings Plan service code for the attributes
that you want to retrieve. For example, to get the list of applicable
Amazon EC2 price lists, use C<AmazonEC2>. For a full list of service
codes containing On-Demand and Reserved Instance (RI) pricing, use the
DescribeServices
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion)
API.

To retrieve the Reserved Instance and Compute Savings Plan price lists,
use C<ComputeSavingsPlans>.

To retrieve Machine Learning Savings Plans price lists, use
C<MachineLearningSavingsPlans>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPriceLists in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

