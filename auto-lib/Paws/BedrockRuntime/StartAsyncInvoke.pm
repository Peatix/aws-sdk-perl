
package Paws::BedrockRuntime::StartAsyncInvoke;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId', required => 1);
  has ModelInput => (is => 'ro', isa => 'Paws::BedrockRuntime::ModelInputPayload', traits => ['NameInRequest'], request_name => 'modelInput', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::AsyncInvokeOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAsyncInvoke');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/async-invoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::StartAsyncInvokeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::StartAsyncInvoke - Arguments for method StartAsyncInvoke on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAsyncInvoke on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method StartAsyncInvoke.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAsyncInvoke.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $StartAsyncInvokeResponse = $bedrock -runtime->StartAsyncInvoke(
      ModelId    => 'MyAsyncInvokeIdentifier',
      ModelInput => {

      },
      OutputDataConfig => {
        S3OutputDataConfig => {
          S3Uri       => 'MyS3Uri',        # min: 1, max: 1024
          BucketOwner => 'MyAccountId',    # OPTIONAL
          KmsKeyId    => 'MyKmsKeyId',     # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken => 'MyAsyncInvokeIdempotencyToken',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $InvocationArn = $StartAsyncInvokeResponse->InvocationArn;

    # Returns a L<Paws::BedrockRuntime::StartAsyncInvokeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/StartAsyncInvoke>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Specify idempotency token to ensure that requests are not duplicated.



=head2 B<REQUIRED> ModelId => Str

The model to invoke.



=head2 B<REQUIRED> ModelInput => L<Paws::BedrockRuntime::ModelInputPayload>

Input to send to the model.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::BedrockRuntime::AsyncInvokeOutputDataConfig>

Where to store the output.



=head2 Tags => ArrayRef[L<Paws::BedrockRuntime::Tag>]

Tags to apply to the invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAsyncInvoke in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

