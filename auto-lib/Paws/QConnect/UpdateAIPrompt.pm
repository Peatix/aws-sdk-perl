
package Paws::QConnect::UpdateAIPrompt;
  use Moose;
  has AiPromptId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aiPromptId', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has TemplateConfiguration => (is => 'ro', isa => 'Paws::QConnect::AIPromptTemplateConfiguration', traits => ['NameInRequest'], request_name => 'templateConfiguration');
  has VisibilityStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAIPrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiprompts/{aiPromptId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateAIPromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAIPrompt - Arguments for method UpdateAIPrompt on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAIPrompt on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateAIPrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAIPrompt.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateAIPromptResponse = $wisdom->UpdateAIPrompt(
      AiPromptId            => 'MyUuidOrArnOrEitherWithQualifier',
      AssistantId           => 'MyUuidOrArn',
      VisibilityStatus      => 'SAVED',
      ClientToken           => 'MyClientToken',                      # OPTIONAL
      Description           => 'MyDescription',                      # OPTIONAL
      TemplateConfiguration => {
        TextFullAIPromptEditTemplateConfiguration => {
          Text => 'MyTextAIPrompt',    # min: 1, max: 1000000

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AiPrompt = $UpdateAIPromptResponse->AiPrompt;

    # Returns a L<Paws::QConnect::UpdateAIPromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateAIPrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiPromptId => Str

The identifier of the Amazon Q in Connect AI Prompt.



=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)..



=head2 Description => Str

The description of the Amazon Q in Connect AI Prompt.



=head2 TemplateConfiguration => L<Paws::QConnect::AIPromptTemplateConfiguration>

The configuration of the prompt template for this AI Prompt.



=head2 B<REQUIRED> VisibilityStatus => Str

The visibility status of the Amazon Q in Connect AI prompt.

Valid values are: C<"SAVED">, C<"PUBLISHED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAIPrompt in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

