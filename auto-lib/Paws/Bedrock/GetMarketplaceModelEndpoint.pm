
package Paws::Bedrock::GetMarketplaceModelEndpoint;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMarketplaceModelEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/marketplace-model/endpoints/{endpointArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetMarketplaceModelEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetMarketplaceModelEndpoint - Arguments for method GetMarketplaceModelEndpoint on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMarketplaceModelEndpoint on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetMarketplaceModelEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMarketplaceModelEndpoint.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetMarketplaceModelEndpointResponse =
      $bedrock->GetMarketplaceModelEndpoint(
      EndpointArn => 'MyArn',

      );

    # Results:
    my $MarketplaceModelEndpoint =
      $GetMarketplaceModelEndpointResponse->MarketplaceModelEndpoint;

    # Returns a L<Paws::Bedrock::GetMarketplaceModelEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetMarketplaceModelEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint you want to get
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMarketplaceModelEndpoint in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

