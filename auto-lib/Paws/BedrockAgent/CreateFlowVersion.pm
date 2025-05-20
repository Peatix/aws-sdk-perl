
package Paws::BedrockAgent::CreateFlowVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreateFlowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateFlowVersion - Arguments for method CreateFlowVersion on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowVersion on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreateFlowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowVersion.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreateFlowVersionResponse = $bedrock -agent->CreateFlowVersion(
      FlowIdentifier => 'MyFlowIdentifier',
      ClientToken    => 'MyClientToken',        # OPTIONAL
      Description    => 'MyFlowDescription',    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateFlowVersionResponse->Arn;
    my $CreatedAt = $CreateFlowVersionResponse->CreatedAt;
    my $CustomerEncryptionKeyArn =
      $CreateFlowVersionResponse->CustomerEncryptionKeyArn;
    my $Definition       = $CreateFlowVersionResponse->Definition;
    my $Description      = $CreateFlowVersionResponse->Description;
    my $ExecutionRoleArn = $CreateFlowVersionResponse->ExecutionRoleArn;
    my $Id               = $CreateFlowVersionResponse->Id;
    my $Name             = $CreateFlowVersionResponse->Name;
    my $Status           = $CreateFlowVersionResponse->Status;
    my $Version          = $CreateFlowVersionResponse->Version;

    # Returns a L<Paws::BedrockAgent::CreateFlowVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreateFlowVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

A description of the version of the flow.



=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow that you want to create a version of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowVersion in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

