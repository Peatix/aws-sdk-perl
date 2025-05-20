
package Paws::BedrockDataAutomationRuntime::GetDataAutomationStatus;
  use Moose;
  has InvocationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataAutomationStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomationRuntime::GetDataAutomationStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::GetDataAutomationStatus - Arguments for method GetDataAutomationStatus on L<Paws::BedrockDataAutomationRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataAutomationStatus on the
L<Runtime for Amazon Bedrock Data Automation|Paws::BedrockDataAutomationRuntime> service. Use the attributes of this class
as arguments to method GetDataAutomationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataAutomationStatus.

=head1 SYNOPSIS

    my $bedrock-data-automation-runtime = Paws->service('BedrockDataAutomationRuntime');
    my $GetDataAutomationStatusResponse =
      $bedrock -data-automation-runtime->GetDataAutomationStatus(
      InvocationArn => 'MyInvocationArn',

      );

    # Results:
    my $ErrorMessage = $GetDataAutomationStatusResponse->ErrorMessage;
    my $ErrorType    = $GetDataAutomationStatusResponse->ErrorType;
    my $OutputConfiguration =
      $GetDataAutomationStatusResponse->OutputConfiguration;
    my $Status = $GetDataAutomationStatusResponse->Status;

# Returns a L<Paws::BedrockDataAutomationRuntime::GetDataAutomationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime/GetDataAutomationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationArn => Str

Invocation arn.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataAutomationStatus in L<Paws::BedrockDataAutomationRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

