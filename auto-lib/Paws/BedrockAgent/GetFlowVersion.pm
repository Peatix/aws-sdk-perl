
package Paws::BedrockAgent::GetFlowVersion;
  use Moose;
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);
  has FlowVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFlowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/versions/{flowVersion}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetFlowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetFlowVersion - Arguments for method GetFlowVersion on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFlowVersion on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetFlowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFlowVersion.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetFlowVersionResponse = $bedrock -agent->GetFlowVersion(
      FlowIdentifier => 'MyFlowIdentifier',
      FlowVersion    => 'MyNumericalVersion',

    );

    # Results:
    my $Arn       = $GetFlowVersionResponse->Arn;
    my $CreatedAt = $GetFlowVersionResponse->CreatedAt;
    my $CustomerEncryptionKeyArn =
      $GetFlowVersionResponse->CustomerEncryptionKeyArn;
    my $Definition       = $GetFlowVersionResponse->Definition;
    my $Description      = $GetFlowVersionResponse->Description;
    my $ExecutionRoleArn = $GetFlowVersionResponse->ExecutionRoleArn;
    my $Id               = $GetFlowVersionResponse->Id;
    my $Name             = $GetFlowVersionResponse->Name;
    my $Status           = $GetFlowVersionResponse->Status;
    my $Version          = $GetFlowVersionResponse->Version;

    # Returns a L<Paws::BedrockAgent::GetFlowVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetFlowVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow for which to get information.



=head2 B<REQUIRED> FlowVersion => Str

The version of the flow for which to get information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFlowVersion in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

