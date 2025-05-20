
package Paws::Bedrock::RegisterMarketplaceModelEndpoint;
  use Moose;
  has EndpointIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointIdentifier', required => 1);
  has ModelSourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterMarketplaceModelEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/marketplace-model/endpoints/{endpointIdentifier}/registration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::RegisterMarketplaceModelEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::RegisterMarketplaceModelEndpoint - Arguments for method RegisterMarketplaceModelEndpoint on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterMarketplaceModelEndpoint on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method RegisterMarketplaceModelEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterMarketplaceModelEndpoint.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $RegisterMarketplaceModelEndpointResponse =
      $bedrock->RegisterMarketplaceModelEndpoint(
      EndpointIdentifier    => 'MyArn',
      ModelSourceIdentifier => 'MyModelSourceIdentifier',

      );

    # Results:
    my $MarketplaceModelEndpoint =
      $RegisterMarketplaceModelEndpointResponse->MarketplaceModelEndpoint;

  # Returns a L<Paws::Bedrock::RegisterMarketplaceModelEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/RegisterMarketplaceModelEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointIdentifier => Str

The ARN of the Amazon SageMaker endpoint you want to register with
Amazon Bedrock Marketplace.



=head2 B<REQUIRED> ModelSourceIdentifier => Str

The ARN of the model from Amazon Bedrock Marketplace that is deployed
on the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterMarketplaceModelEndpoint in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

