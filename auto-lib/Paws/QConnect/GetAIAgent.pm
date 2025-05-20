
package Paws::QConnect::GetAIAgent;
  use Moose;
  has AiAgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aiAgentId', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAIAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiagents/{aiAgentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::GetAIAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetAIAgent - Arguments for method GetAIAgent on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAIAgent on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method GetAIAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAIAgent.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $GetAIAgentResponse = $wisdom->GetAIAgent(
      AiAgentId   => 'MyUuidOrArnOrEitherWithQualifier',
      AssistantId => 'MyUuidOrArn',

    );

    # Results:
    my $AiAgent       = $GetAIAgentResponse->AiAgent;
    my $VersionNumber = $GetAIAgentResponse->VersionNumber;

    # Returns a L<Paws::QConnect::GetAIAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetAIAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiAgentId => Str

The identifier of the Amazon Q in Connect AI Agent (with or without a
version qualifier). Can be either the ID or the ARN. URLs cannot
contain the ARN.



=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAIAgent in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

