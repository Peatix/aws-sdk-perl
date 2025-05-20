
package Paws::BedrockRuntime::GetAsyncInvoke;
  use Moose;
  has InvocationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'invocationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAsyncInvoke');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/async-invoke/{invocationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::GetAsyncInvokeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::GetAsyncInvoke - Arguments for method GetAsyncInvoke on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAsyncInvoke on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method GetAsyncInvoke.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAsyncInvoke.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $GetAsyncInvokeResponse = $bedrock -runtime->GetAsyncInvoke(
      InvocationArn => 'MyInvocationArn',

    );

    # Results:
    my $ClientRequestToken = $GetAsyncInvokeResponse->ClientRequestToken;
    my $EndTime            = $GetAsyncInvokeResponse->EndTime;
    my $FailureMessage     = $GetAsyncInvokeResponse->FailureMessage;
    my $InvocationArn      = $GetAsyncInvokeResponse->InvocationArn;
    my $LastModifiedTime   = $GetAsyncInvokeResponse->LastModifiedTime;
    my $ModelArn           = $GetAsyncInvokeResponse->ModelArn;
    my $OutputDataConfig   = $GetAsyncInvokeResponse->OutputDataConfig;
    my $Status             = $GetAsyncInvokeResponse->Status;
    my $SubmitTime         = $GetAsyncInvokeResponse->SubmitTime;

    # Returns a L<Paws::BedrockRuntime::GetAsyncInvokeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/GetAsyncInvoke>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationArn => Str

The invocation's ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAsyncInvoke in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

