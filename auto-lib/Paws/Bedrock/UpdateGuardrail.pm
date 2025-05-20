
package Paws::Bedrock::UpdateGuardrail;
  use Moose;
  has BlockedInputMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedInputMessaging', required => 1);
  has BlockedOutputsMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedOutputsMessaging', required => 1);
  has ContentPolicyConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailContentPolicyConfig', traits => ['NameInRequest'], request_name => 'contentPolicyConfig');
  has ContextualGroundingPolicyConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailContextualGroundingPolicyConfig', traits => ['NameInRequest'], request_name => 'contextualGroundingPolicyConfig');
  has CrossRegionConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailCrossRegionConfig', traits => ['NameInRequest'], request_name => 'crossRegionConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailIdentifier', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SensitiveInformationPolicyConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig', traits => ['NameInRequest'], request_name => 'sensitiveInformationPolicyConfig');
  has TopicPolicyConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailTopicPolicyConfig', traits => ['NameInRequest'], request_name => 'topicPolicyConfig');
  has WordPolicyConfig => (is => 'ro', isa => 'Paws::Bedrock::GuardrailWordPolicyConfig', traits => ['NameInRequest'], request_name => 'wordPolicyConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGuardrail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrails/{guardrailIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::UpdateGuardrailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::UpdateGuardrail - Arguments for method UpdateGuardrail on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGuardrail on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method UpdateGuardrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGuardrail.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $UpdateGuardrailResponse = $bedrock->UpdateGuardrail(
      BlockedInputMessaging   => 'MyGuardrailBlockedMessaging',
      BlockedOutputsMessaging => 'MyGuardrailBlockedMessaging',
      GuardrailIdentifier     => 'MyGuardrailIdentifier',
      Name                    => 'MyGuardrailName',
      ContentPolicyConfig     => {
        FiltersConfig => [
          {
            InputStrength  => 'NONE',      # values: NONE, LOW, MEDIUM, HIGH
            OutputStrength => 'NONE',      # values: NONE, LOW, MEDIUM, HIGH
            Type           => 'SEXUAL'
            , # values: SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK
            InputAction     => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            InputEnabled    => 1,          # OPTIONAL
            InputModalities => [
              'TEXT', ...                  # values: TEXT, IMAGE
            ],    # min: 1, max: 2; OPTIONAL
            OutputAction     => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            OutputEnabled    => 1,          # OPTIONAL
            OutputModalities => [
              'TEXT', ...                   # values: TEXT, IMAGE
            ],    # min: 1, max: 2; OPTIONAL
          },
          ...
        ],    # min: 1, max: 6

      },    # OPTIONAL
      ContextualGroundingPolicyConfig => {
        FiltersConfig => [
          {
            Threshold => 1,
            Type      => 'GROUNDING',    # values: GROUNDING, RELEVANCE
            Action    => 'BLOCK',        # values: BLOCK, NONE; OPTIONAL
            Enabled   => 1,              # OPTIONAL
          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      CrossRegionConfig => {
        GuardrailProfileIdentifier =>
          'MyGuardrailCrossRegionGuardrailProfileIdentifier'
        ,    # min: 15, max: 2048

      },    # OPTIONAL
      Description                      => 'MyGuardrailDescription',   # OPTIONAL
      KmsKeyId                         => 'MyKmsKeyId',               # OPTIONAL
      SensitiveInformationPolicyConfig => {
        PiiEntitiesConfig => [
          {
            Action => 'BLOCK',           # values: BLOCK, ANONYMIZE, NONE
            Type   => 'ADDRESS'
            , # values: ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER
            InputAction   => 'BLOCK',    # values: BLOCK, ANONYMIZE, NONE
            InputEnabled  => 1,          # OPTIONAL
            OutputAction  => 'BLOCK',    # values: BLOCK, ANONYMIZE, NONE
            OutputEnabled => 1,          # OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
        RegexesConfig => [
          {
            Action  => 'BLOCK',          # values: BLOCK, ANONYMIZE, NONE
            Name    => 'MyGuardrailRegexConfigNameString',    # min: 1, max: 100
            Pattern => 'MyGuardrailRegexConfigPatternString', # min: 1, max: 500
            Description => 'MyGuardrailRegexConfigDescriptionString'
            ,    # min: 1, max: 1000; OPTIONAL
            InputAction   => 'BLOCK',    # values: BLOCK, ANONYMIZE, NONE
            InputEnabled  => 1,          # OPTIONAL
            OutputAction  => 'BLOCK',    # values: BLOCK, ANONYMIZE, NONE
            OutputEnabled => 1,          # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      TopicPolicyConfig => {
        TopicsConfig => [
          {
            Definition => 'MyGuardrailTopicDefinition',    # min: 1, max: 200
            Name       => 'MyGuardrailTopicName',          # min: 1, max: 100
            Type       => 'DENY',                          # values: DENY
            Examples   => [
              'MyGuardrailTopicExample', ...               # min: 1, max: 100
            ],    # max: 5; OPTIONAL
            InputAction   => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            InputEnabled  => 1,          # OPTIONAL
            OutputAction  => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            OutputEnabled => 1,          # OPTIONAL
          },
          ...
        ],    # min: 1, max: 30

      },    # OPTIONAL
      WordPolicyConfig => {
        ManagedWordListsConfig => [
          {
            Type          => 'PROFANITY',    # values: PROFANITY
            InputAction   => 'BLOCK',        # values: BLOCK, NONE; OPTIONAL
            InputEnabled  => 1,              # OPTIONAL
            OutputAction  => 'BLOCK',        # values: BLOCK, NONE; OPTIONAL
            OutputEnabled => 1,              # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        WordsConfig => [
          {
            Text => 'MyGuardrailWordConfigTextString',    # min: 1, max: 100
            InputAction   => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            InputEnabled  => 1,          # OPTIONAL
            OutputAction  => 'BLOCK',    # values: BLOCK, NONE; OPTIONAL
            OutputEnabled => 1,          # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $GuardrailArn = $UpdateGuardrailResponse->GuardrailArn;
    my $GuardrailId  = $UpdateGuardrailResponse->GuardrailId;
    my $UpdatedAt    = $UpdateGuardrailResponse->UpdatedAt;
    my $Version      = $UpdateGuardrailResponse->Version;

    # Returns a L<Paws::Bedrock::UpdateGuardrailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/UpdateGuardrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockedInputMessaging => Str

The message to return when the guardrail blocks a prompt.



=head2 B<REQUIRED> BlockedOutputsMessaging => Str

The message to return when the guardrail blocks a model response.



=head2 ContentPolicyConfig => L<Paws::Bedrock::GuardrailContentPolicyConfig>

The content policy to configure for the guardrail.



=head2 ContextualGroundingPolicyConfig => L<Paws::Bedrock::GuardrailContextualGroundingPolicyConfig>

The contextual grounding policy configuration used to update a
guardrail.



=head2 CrossRegionConfig => L<Paws::Bedrock::GuardrailCrossRegionConfig>

The system-defined guardrail profile that you're using with your
guardrail. Guardrail profiles define the destination Amazon Web
Services Regions where guardrail inference requests can be
automatically routed.

For more information, see the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html).



=head2 Description => Str

A description of the guardrail.



=head2 B<REQUIRED> GuardrailIdentifier => Str

The unique identifier of the guardrail. This can be an ID or the ARN.



=head2 KmsKeyId => Str

The ARN of the KMS key with which to encrypt the guardrail.



=head2 B<REQUIRED> Name => Str

A name for the guardrail.



=head2 SensitiveInformationPolicyConfig => L<Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig>

The sensitive information policy to configure for the guardrail.



=head2 TopicPolicyConfig => L<Paws::Bedrock::GuardrailTopicPolicyConfig>

The topic policy to configure for the guardrail.



=head2 WordPolicyConfig => L<Paws::Bedrock::GuardrailWordPolicyConfig>

The word policy to configure for the guardrail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGuardrail in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

