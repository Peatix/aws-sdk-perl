
package Paws::Pricing::GetPriceListFileUrl;
  use Moose;
  has FileFormat => (is => 'ro', isa => 'Str', required => 1);
  has PriceListArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPriceListFileUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pricing::GetPriceListFileUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetPriceListFileUrl - Arguments for method GetPriceListFileUrl on L<Paws::Pricing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPriceListFileUrl on the
L<AWS Price List Service|Paws::Pricing> service. Use the attributes of this class
as arguments to method GetPriceListFileUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPriceListFileUrl.

=head1 SYNOPSIS

    my $api.pricing = Paws->service('Pricing');
    my $GetPriceListFileUrlResponse = $api . pricing->GetPriceListFileUrl(
      FileFormat   => 'MyFileFormat',
      PriceListArn => 'MyPriceListArn',

    );

    # Results:
    my $Url = $GetPriceListFileUrlResponse->Url;

    # Returns a L<Paws::Pricing::GetPriceListFileUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileFormat => Str

The format that you want to retrieve your Price List files in. The
C<FileFormat> can be obtained from the ListPriceLists
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html)
response.



=head2 B<REQUIRED> PriceListArn => Str

The unique identifier that maps to where your Price List files are
located. C<PriceListArn> can be obtained from the ListPriceLists
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html)
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPriceListFileUrl in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

