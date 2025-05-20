
package Paws::Bedrock::CreateMarketplaceModelEndpoint;
  use Moose;
  has AcceptEula => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'acceptEula');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has EndpointConfig => (is => 'ro', isa => 'Paws::Bedrock::EndpointConfig', traits => ['NameInRequest'], request_name => 'endpointConfig', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpointName', required => 1);
  has ModelSourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSourceIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMarketplaceModelEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/marketplace-model/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateMarketplaceModelEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateMarketplaceModelEndpoint - Arguments for method CreateMarketplaceModelEndpoint on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMarketplaceModelEndpoint on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateMarketplaceModelEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMarketplaceModelEndpoint.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateMarketplaceModelEndpointResponse =
      $bedrock->CreateMarketplaceModelEndpoint(
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
      EndpointName          => 'MyEndpointName',
      ModelSourceIdentifier => 'MyModelSourceIdentifier',
      AcceptEula            => 1,                           # OPTIONAL
      ClientRequestToken    => 'MyIdempotencyToken',        # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $MarketplaceModelEndpoint =
      $CreateMarketplaceModelEndpointResponse->MarketplaceModelEndpoint;

    # Returns a L<Paws::Bedrock::CreateMarketplaceModelEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateMarketplaceModelEndpoint>

=head1 ATTRIBUTES


=head2 AcceptEula => Bool

Indicates whether you accept the end-user license agreement (EULA) for
the model. Set to C<true> to accept the EULA.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. This token is listed as not required
because Amazon Web Services SDKs automatically generate it for you and
set this parameter. If you're not using the Amazon Web Services SDK or
the CLI, you must provide this token or the action will fail.



=head2 B<REQUIRED> EndpointConfig => L<Paws::Bedrock::EndpointConfig>

The configuration for the endpoint, including the number and type of
instances to use.



=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint. This name must be unique within your Amazon
Web Services account and region.



=head2 B<REQUIRED> ModelSourceIdentifier => Str

The ARN of the model from Amazon Bedrock Marketplace that you want to
deploy to the endpoint.



=head2 Tags => ArrayRef[L<Paws::Bedrock::Tag>]

An array of key-value pairs to apply to the underlying Amazon SageMaker
endpoint. You can use these tags to organize and identify your Amazon
Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMarketplaceModelEndpoint in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

