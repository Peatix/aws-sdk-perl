
package Paws::BedrockAgent::GetFlow;
  use Moose;
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetFlow - Arguments for method GetFlow on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFlow on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFlow.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetFlowResponse = $bedrock -agent->GetFlow(
      FlowIdentifier => 'MyFlowIdentifier',

    );

    # Results:
    my $Arn                      = $GetFlowResponse->Arn;
    my $CreatedAt                = $GetFlowResponse->CreatedAt;
    my $CustomerEncryptionKeyArn = $GetFlowResponse->CustomerEncryptionKeyArn;
    my $Definition               = $GetFlowResponse->Definition;
    my $Description              = $GetFlowResponse->Description;
    my $ExecutionRoleArn         = $GetFlowResponse->ExecutionRoleArn;
    my $Id                       = $GetFlowResponse->Id;
    my $Name                     = $GetFlowResponse->Name;
    my $Status                   = $GetFlowResponse->Status;
    my $UpdatedAt                = $GetFlowResponse->UpdatedAt;
    my $Validations              = $GetFlowResponse->Validations;
    my $Version                  = $GetFlowResponse->Version;

    # Returns a L<Paws::BedrockAgent::GetFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFlow in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

