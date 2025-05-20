
package Paws::BedrockAgent::GetPrompt;
  use Moose;
  has PromptIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'promptIdentifier', required => 1);
  has PromptVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'promptVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{promptIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetPromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetPrompt - Arguments for method GetPrompt on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrompt on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetPrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrompt.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetPromptResponse = $bedrock -agent->GetPrompt(
      PromptIdentifier => 'MyPromptIdentifier',
      PromptVersion    => 'MyVersion',            # OPTIONAL
    );

    # Results:
    my $Arn                      = $GetPromptResponse->Arn;
    my $CreatedAt                = $GetPromptResponse->CreatedAt;
    my $CustomerEncryptionKeyArn = $GetPromptResponse->CustomerEncryptionKeyArn;
    my $DefaultVariant           = $GetPromptResponse->DefaultVariant;
    my $Description              = $GetPromptResponse->Description;
    my $Id                       = $GetPromptResponse->Id;
    my $Name                     = $GetPromptResponse->Name;
    my $UpdatedAt                = $GetPromptResponse->UpdatedAt;
    my $Variants                 = $GetPromptResponse->Variants;
    my $Version                  = $GetPromptResponse->Version;

    # Returns a L<Paws::BedrockAgent::GetPromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetPrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PromptIdentifier => Str

The unique identifier of the prompt.



=head2 PromptVersion => Str

The version of the prompt about which you want to retrieve information.
Omit this field to return information about the working draft of the
prompt.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrompt in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

