
package Paws::QBusiness::UpdateChatControlsConfiguration;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has BlockedPhrasesConfigurationUpdate => (is => 'ro', isa => 'Paws::QBusiness::BlockedPhrasesConfigurationUpdate', traits => ['NameInRequest'], request_name => 'blockedPhrasesConfigurationUpdate');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CreatorModeConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CreatorModeConfiguration', traits => ['NameInRequest'], request_name => 'creatorModeConfiguration');
  has HallucinationReductionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::HallucinationReductionConfiguration', traits => ['NameInRequest'], request_name => 'hallucinationReductionConfiguration');
  has OrchestrationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::OrchestrationConfiguration', traits => ['NameInRequest'], request_name => 'orchestrationConfiguration');
  has ResponseScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseScope');
  has TopicConfigurationsToCreateOrUpdate => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::TopicConfiguration]', traits => ['NameInRequest'], request_name => 'topicConfigurationsToCreateOrUpdate');
  has TopicConfigurationsToDelete => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::TopicConfiguration]', traits => ['NameInRequest'], request_name => 'topicConfigurationsToDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChatControlsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/chatcontrols');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateChatControlsConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateChatControlsConfiguration - Arguments for method UpdateChatControlsConfiguration on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChatControlsConfiguration on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateChatControlsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChatControlsConfiguration.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateChatControlsConfigurationResponse =
      $qbusiness->UpdateChatControlsConfiguration(
      ApplicationId                     => 'MyApplicationId',
      BlockedPhrasesConfigurationUpdate => {
        BlockedPhrasesToCreateOrUpdate => [
          'MyBlockedPhrase', ...    # max: 36
        ],    # OPTIONAL
        BlockedPhrasesToDelete => [
          'MyBlockedPhrase', ...    # max: 36
        ],    # OPTIONAL
        SystemMessageOverride => 'MySystemMessageOverride', # max: 350; OPTIONAL
      },    # OPTIONAL
      ClientToken              => 'MyClientToken',    # OPTIONAL
      CreatorModeConfiguration => {
        CreatorModeControl => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      HallucinationReductionConfiguration => {
        HallucinationReductionControl =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      OrchestrationConfiguration => {
        Control => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      ResponseScope => 'ENTERPRISE_CONTENT_ONLY',    # OPTIONAL
      TopicConfigurationsToCreateOrUpdate => [
        {
          Name  => 'MyTopicConfigurationName',       # min: 1, max: 36
          Rules => [
            {
              RuleType => 'CONTENT_BLOCKER_RULE'
              ,    # values: CONTENT_BLOCKER_RULE, CONTENT_RETRIEVAL_RULE
              ExcludedUsersAndGroups => {
                UserGroups => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
                UserIds => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
              },    # OPTIONAL
              IncludedUsersAndGroups => {
                UserGroups => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
                UserIds => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
              },    # OPTIONAL
              RuleConfiguration => {
                ContentBlockerRule => {
                  SystemMessageOverride =>
                    'MySystemMessageOverride',    # max: 350; OPTIONAL
                },    # OPTIONAL
                ContentRetrievalRule => {
                  EligibleDataSources => [
                    {
                      DataSourceId =>
                        'MyDataSourceId',    # min: 36, max: 36; OPTIONAL
                      IndexId => 'MyIndexId',    # min: 36, max: 36; OPTIONAL
                    },
                    ...
                  ],    # max: 5; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # max: 10
          Description         => 'MyTopicDescription',    # max: 350; OPTIONAL
          ExampleChatMessages => [
            'MyExampleChatMessage', ...                   # max: 350
          ],    # max: 5; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TopicConfigurationsToDelete => [
        {
          Name  => 'MyTopicConfigurationName',    # min: 1, max: 36
          Rules => [
            {
              RuleType => 'CONTENT_BLOCKER_RULE'
              ,    # values: CONTENT_BLOCKER_RULE, CONTENT_RETRIEVAL_RULE
              ExcludedUsersAndGroups => {
                UserGroups => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
                UserIds => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
              },    # OPTIONAL
              IncludedUsersAndGroups => {
                UserGroups => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
                UserIds => [
                  'MyString', ...    # min: 1, max: 2048
                ],    # OPTIONAL
              },    # OPTIONAL
              RuleConfiguration => {
                ContentBlockerRule => {
                  SystemMessageOverride =>
                    'MySystemMessageOverride',    # max: 350; OPTIONAL
                },    # OPTIONAL
                ContentRetrievalRule => {
                  EligibleDataSources => [
                    {
                      DataSourceId =>
                        'MyDataSourceId',    # min: 36, max: 36; OPTIONAL
                      IndexId => 'MyIndexId',    # min: 36, max: 36; OPTIONAL
                    },
                    ...
                  ],    # max: 5; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # max: 10
          Description         => 'MyTopicDescription',    # max: 350; OPTIONAL
          ExampleChatMessages => [
            'MyExampleChatMessage', ...                   # max: 350
          ],    # max: 5; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateChatControlsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application for which the chat controls are
configured.



=head2 BlockedPhrasesConfigurationUpdate => L<Paws::QBusiness::BlockedPhrasesConfigurationUpdate>

The phrases blocked from chat by your chat control configuration.



=head2 ClientToken => Str

A token that you provide to identify the request to update a Amazon Q
Business application chat configuration.



=head2 CreatorModeConfiguration => L<Paws::QBusiness::CreatorModeConfiguration>

The configuration details for C<CREATOR_MODE>.



=head2 HallucinationReductionConfiguration => L<Paws::QBusiness::HallucinationReductionConfiguration>

The hallucination reduction settings for your application.



=head2 OrchestrationConfiguration => L<Paws::QBusiness::OrchestrationConfiguration>

The chat response orchestration settings for your application.



=head2 ResponseScope => Str

The response scope configured for your application. This determines
whether your application uses its retrieval augmented generation (RAG)
system to generate answers only from your enterprise data, or also uses
the large language models (LLM) knowledge to respons to end user
questions in chat.

Valid values are: C<"ENTERPRISE_CONTENT_ONLY">, C<"EXTENDED_KNOWLEDGE_ENABLED">

=head2 TopicConfigurationsToCreateOrUpdate => ArrayRef[L<Paws::QBusiness::TopicConfiguration>]

The configured topic specific chat controls you want to update.



=head2 TopicConfigurationsToDelete => ArrayRef[L<Paws::QBusiness::TopicConfiguration>]

The configured topic specific chat controls you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChatControlsConfiguration in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

