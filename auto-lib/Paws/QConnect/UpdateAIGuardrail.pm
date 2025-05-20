
package Paws::QConnect::UpdateAIGuardrail;
  use Moose;
  has AiGuardrailId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aiGuardrailId', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has BlockedInputMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedInputMessaging', required => 1);
  has BlockedOutputsMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedOutputsMessaging', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ContentPolicyConfig => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailContentPolicyConfig', traits => ['NameInRequest'], request_name => 'contentPolicyConfig');
  has ContextualGroundingPolicyConfig => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig', traits => ['NameInRequest'], request_name => 'contextualGroundingPolicyConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SensitiveInformationPolicyConfig => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailSensitiveInformationPolicyConfig', traits => ['NameInRequest'], request_name => 'sensitiveInformationPolicyConfig');
  has TopicPolicyConfig => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailTopicPolicyConfig', traits => ['NameInRequest'], request_name => 'topicPolicyConfig');
  has VisibilityStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityStatus', required => 1);
  has WordPolicyConfig => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailWordPolicyConfig', traits => ['NameInRequest'], request_name => 'wordPolicyConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAIGuardrail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiguardrails/{aiGuardrailId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateAIGuardrailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAIGuardrail - Arguments for method UpdateAIGuardrail on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAIGuardrail on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateAIGuardrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAIGuardrail.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateAIGuardrailResponse = $wisdom->UpdateAIGuardrail(
      AiGuardrailId           => 'MyUuidOrArnOrEitherWithQualifier',
      AssistantId             => 'MyUuidOrArn',
      BlockedInputMessaging   => 'MyAIGuardrailBlockedMessaging',
      BlockedOutputsMessaging => 'MyAIGuardrailBlockedMessaging',
      VisibilityStatus        => 'SAVED',
      ClientToken             => 'MyClientToken',                     # OPTIONAL
      ContentPolicyConfig     => {
        FiltersConfig => [
          {
            InputStrength  => 'NONE',    # values: NONE, LOW, MEDIUM, HIGH
            OutputStrength => 'NONE',    # values: NONE, LOW, MEDIUM, HIGH
            Type           => 'SEXUAL'
            , # values: SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK

          },
          ...
        ],    # min: 1, max: 6

      },    # OPTIONAL
      ContextualGroundingPolicyConfig => {
        FiltersConfig => [
          {
            Threshold => 1,
            Type      => 'GROUNDING',    # values: GROUNDING, RELEVANCE

          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      Description                      => 'MyAIGuardrailDescription', # OPTIONAL
      SensitiveInformationPolicyConfig => {
        PiiEntitiesConfig => [
          {
            Action => 'BLOCK',    # values: BLOCK, ANONYMIZE
            Type   => 'ADDRESS'
            , # values: ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER

          },
          ...
        ],    # min: 1; OPTIONAL
        RegexesConfig => [
          {
            Action      => 'BLOCK',                   # values: BLOCK, ANONYMIZE
            Name        => 'MyGuardrailRegexName',    # min: 1, max: 100
            Pattern     => 'MyGuardrailRegexPattern', # min: 1
            Description =>
              'MyGuardrailRegexDescription',    # min: 1, max: 1000; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      TopicPolicyConfig => {
        TopicsConfig => [
          {
            Definition => 'MyGuardrailTopicDefinition',    # min: 1, max: 200
            Name       => 'MyGuardrailTopicName',          # min: 1, max: 100
            Type       => 'DENY',                          # values: DENY
            Examples   => [
              'MyGuardrailTopicExample', ...               # min: 1, max: 100
            ],    # OPTIONAL
          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      WordPolicyConfig => {
        ManagedWordListsConfig => [
          {
            Type => 'PROFANITY',    # values: PROFANITY

          },
          ...
        ],    # OPTIONAL
        WordsConfig => [
          {
            Text => 'MyGuardrailWordText',    # min: 1

          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AiGuardrail = $UpdateAIGuardrailResponse->AiGuardrail;

    # Returns a L<Paws::QConnect::UpdateAIGuardrailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateAIGuardrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiGuardrailId => Str

The identifier of the Amazon Q in Connect AI Guardrail.



=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 B<REQUIRED> BlockedInputMessaging => Str

The message to return when the AI Guardrail blocks a prompt.



=head2 B<REQUIRED> BlockedOutputsMessaging => Str

The message to return when the AI Guardrail blocks a model response.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)..



=head2 ContentPolicyConfig => L<Paws::QConnect::AIGuardrailContentPolicyConfig>

The content filter policies to configure for the AI Guardrail.



=head2 ContextualGroundingPolicyConfig => L<Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig>

The contextual grounding policy configuration used to create an AI
Guardrail.



=head2 Description => Str

A description of the AI Guardrail.



=head2 SensitiveInformationPolicyConfig => L<Paws::QConnect::AIGuardrailSensitiveInformationPolicyConfig>

The sensitive information policy to configure for the AI Guardrail.



=head2 TopicPolicyConfig => L<Paws::QConnect::AIGuardrailTopicPolicyConfig>

The topic policies to configure for the AI Guardrail.



=head2 B<REQUIRED> VisibilityStatus => Str

The visibility status of the Amazon Q in Connect AI Guardrail.

Valid values are: C<"SAVED">, C<"PUBLISHED">

=head2 WordPolicyConfig => L<Paws::QConnect::AIGuardrailWordPolicyConfig>

The word policy you configure for the AI Guardrail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAIGuardrail in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

