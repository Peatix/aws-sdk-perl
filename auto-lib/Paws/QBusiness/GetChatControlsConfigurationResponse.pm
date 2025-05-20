
package Paws::QBusiness::GetChatControlsConfigurationResponse;
  use Moose;
  has BlockedPhrases => (is => 'ro', isa => 'Paws::QBusiness::BlockedPhrasesConfiguration', traits => ['NameInRequest'], request_name => 'blockedPhrases');
  has CreatorModeConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AppliedCreatorModeConfiguration', traits => ['NameInRequest'], request_name => 'creatorModeConfiguration');
  has HallucinationReductionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::HallucinationReductionConfiguration', traits => ['NameInRequest'], request_name => 'hallucinationReductionConfiguration');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OrchestrationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AppliedOrchestrationConfiguration', traits => ['NameInRequest'], request_name => 'orchestrationConfiguration');
  has ResponseScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseScope');
  has TopicConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::TopicConfiguration]', traits => ['NameInRequest'], request_name => 'topicConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetChatControlsConfigurationResponse

=head1 ATTRIBUTES


=head2 BlockedPhrases => L<Paws::QBusiness::BlockedPhrasesConfiguration>

The phrases blocked from chat by your chat control configuration.


=head2 CreatorModeConfiguration => L<Paws::QBusiness::AppliedCreatorModeConfiguration>

The configuration details for C<CREATOR_MODE>.


=head2 HallucinationReductionConfiguration => L<Paws::QBusiness::HallucinationReductionConfiguration>

The hallucination reduction settings for your application.


=head2 NextToken => Str

If the C<maxResults> response was incomplete because there is more data
to retrieve, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
Amazon Q Business chat controls configured.


=head2 OrchestrationConfiguration => L<Paws::QBusiness::AppliedOrchestrationConfiguration>

The chat response orchestration settings for your application.

Chat orchestration is optimized to work for English language content.
For more details on language support in Amazon Q Business, see
Supported languages
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html).


=head2 ResponseScope => Str

The response scope configured for a Amazon Q Business application. This
determines whether your application uses its retrieval augmented
generation (RAG) system to generate answers only from your enterprise
data, or also uses the large language models (LLM) knowledge to respons
to end user questions in chat.

Valid values are: C<"ENTERPRISE_CONTENT_ONLY">, C<"EXTENDED_KNOWLEDGE_ENABLED">
=head2 TopicConfigurations => ArrayRef[L<Paws::QBusiness::TopicConfiguration>]

The topic specific controls configured for a Amazon Q Business
application.


=head2 _request_id => Str


=cut

