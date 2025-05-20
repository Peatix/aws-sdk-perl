
package Paws::BedrockAgent::CreatePromptVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PromptIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'promptIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgent::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePromptVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{promptIdentifier}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreatePromptVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreatePromptVersion - Arguments for method CreatePromptVersion on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePromptVersion on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreatePromptVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePromptVersion.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreatePromptVersionResponse = $bedrock -agent->CreatePromptVersion(
      PromptIdentifier => 'MyPromptIdentifier',
      ClientToken      => 'MyClientToken',          # OPTIONAL
      Description      => 'MyPromptDescription',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreatePromptVersionResponse->Arn;
    my $CreatedAt = $CreatePromptVersionResponse->CreatedAt;
    my $CustomerEncryptionKeyArn =
      $CreatePromptVersionResponse->CustomerEncryptionKeyArn;
    my $DefaultVariant = $CreatePromptVersionResponse->DefaultVariant;
    my $Description    = $CreatePromptVersionResponse->Description;
    my $Id             = $CreatePromptVersionResponse->Id;
    my $Name           = $CreatePromptVersionResponse->Name;
    my $UpdatedAt      = $CreatePromptVersionResponse->UpdatedAt;
    my $Variants       = $CreatePromptVersionResponse->Variants;
    my $Version        = $CreatePromptVersionResponse->Version;

    # Returns a L<Paws::BedrockAgent::CreatePromptVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreatePromptVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

A description for the version of the prompt.



=head2 B<REQUIRED> PromptIdentifier => Str

The unique identifier of the prompt that you want to create a version
of.



=head2 Tags => L<Paws::BedrockAgent::TagsMap>

Any tags that you want to attach to the version of the prompt. For more
information, see Tagging resources in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePromptVersion in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

