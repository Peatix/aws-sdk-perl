
package Paws::Bedrock::UpdateMarketplaceModelEndpoint;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has EndpointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointArn', required => 1);
  has EndpointConfig => (is => 'ro', isa => 'Paws::Bedrock::EndpointConfig', traits => ['NameInRequest'], request_name => 'endpointConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMarketplaceModelEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/marketplace-model/endpoints/{endpointArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::UpdateMarketplaceModelEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::UpdateMarketplaceModelEndpoint - Arguments for method UpdateMarketplaceModelEndpoint on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMarketplaceModelEndpoint on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method UpdateMarketplaceModelEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMarketplaceModelEndpoint.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $UpdateMarketplaceModelEndpointResponse =
      $bedrock->UpdateMarketplaceModelEndpoint(
      EndpointArn    => 'MyArn',
      EndpointConfig => {
        SageMaker => {
          ExecutionRole        => 'MyRoleArn',         # max: 2048
          InitialInstanceCount => 1,                   # min: 1
          InstanceType         => 'MyInstanceType',    # min: 1, max: 50
          KmsEncryptionKey     => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
          Vpc                  => {
            SecurityGroupIds => [
              'MySecurityGroupId', ...             # max: 32
            ],    # min: 1, max: 5
            SubnetIds => [
              'MySubnetId', ...    # max: 32
            ],    # min: 1, max: 16

          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken => 'MyIdempotencyToken',    # OPTIONAL
      );

    # Results:
    my $MarketplaceModelEndpoint =
      $UpdateMarketplaceModelEndpointResponse->MarketplaceModelEndpoint;

    # Returns a L<Paws::Bedrock::UpdateMarketplaceModelEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/UpdateMarketplaceModelEndpoint>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. This token is listed as not required
because Amazon Web Services SDKs automatically generate it for you and
set this parameter. If you're not using the Amazon Web Services SDK or
the CLI, you must provide this token or the action will fail.



=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint you want to update.



=head2 B<REQUIRED> EndpointConfig => L<Paws::Bedrock::EndpointConfig>

The new configuration for the endpoint, including the number and type
of instances to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMarketplaceModelEndpoint in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

