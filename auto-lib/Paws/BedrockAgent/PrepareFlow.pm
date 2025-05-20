
package Paws::BedrockAgent::PrepareFlow;
  use Moose;
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PrepareFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::PrepareFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::PrepareFlow - Arguments for method PrepareFlow on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PrepareFlow on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method PrepareFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PrepareFlow.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $PrepareFlowResponse = $bedrock -agent->PrepareFlow(
      FlowIdentifier => 'MyFlowIdentifier',

    );

    # Results:
    my $Id     = $PrepareFlowResponse->Id;
    my $Status = $PrepareFlowResponse->Status;

    # Returns a L<Paws::BedrockAgent::PrepareFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/PrepareFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PrepareFlow in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

