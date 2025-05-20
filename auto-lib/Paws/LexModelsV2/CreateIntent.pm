
package Paws::LexModelsV2::CreateIntent;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::DialogCodeHookSettings', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FulfillmentCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::FulfillmentCodeHookSettings', traits => ['NameInRequest'], request_name => 'fulfillmentCodeHook');
  has InitialResponseSetting => (is => 'ro', isa => 'Paws::LexModelsV2::InitialResponseSetting', traits => ['NameInRequest'], request_name => 'initialResponseSetting');
  has InputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::InputContext]', traits => ['NameInRequest'], request_name => 'inputContexts');
  has IntentClosingSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentClosingSetting', traits => ['NameInRequest'], request_name => 'intentClosingSetting');
  has IntentConfirmationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentConfirmationSetting', traits => ['NameInRequest'], request_name => 'intentConfirmationSetting');
  has IntentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentName', required => 1);
  has KendraConfiguration => (is => 'ro', isa => 'Paws::LexModelsV2::KendraConfiguration', traits => ['NameInRequest'], request_name => 'kendraConfiguration');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has OutputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::OutputContext]', traits => ['NameInRequest'], request_name => 'outputContexts');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has QInConnectIntentConfiguration => (is => 'ro', isa => 'Paws::LexModelsV2::QInConnectIntentConfiguration', traits => ['NameInRequest'], request_name => 'qInConnectIntentConfiguration');
  has QnAIntentConfiguration => (is => 'ro', isa => 'Paws::LexModelsV2::QnAIntentConfiguration', traits => ['NameInRequest'], request_name => 'qnAIntentConfiguration');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SampleUtterance]', traits => ['NameInRequest'], request_name => 'sampleUtterances');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateIntent - Arguments for method CreateIntent on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntent on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntent.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateIntentResponse = $models - v2 -lex->CreateIntent(
      BotId          => 'MyId',
      BotVersion     => 'MyDraftBotVersion',
      IntentName     => 'MyName',
      LocaleId       => 'MyLocaleId',
      Description    => 'MyDescription',       # OPTIONAL
      DialogCodeHook => {
        Enabled => 1,

      },                                       # OPTIONAL
      FulfillmentCodeHook => {
        Enabled                         => 1,
        Active                          => 1,    # OPTIONAL
        FulfillmentUpdatesSpecification => {
          Active        => 1,                    # OPTIONAL
          StartResponse => {
            DelayInSeconds => 1,                 # min: 1, max: 900
            MessageGroups  => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  ...
                ],    # max: 2; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },    # OPTIONAL
          TimeoutInSeconds => 1,    # min: 1, max: 900; OPTIONAL
          UpdateResponse   => {
            FrequencyInSeconds => 1,    # min: 1, max: 900
            MessageGroups      => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  ...
                ],    # max: 2; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        PostFulfillmentStatusSpecification => {
          FailureConditional => {
            Active              => 1,    # OPTIONAL
            ConditionalBranches => [
              {
                Condition => {
                  ExpressionString =>
                    'MyConditionExpression',    # min: 1, max: 1024

                },
                Name     => 'MyName',           # min: 1, max: 100
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 4
            DefaultBranch => {
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },

          },    # OPTIONAL
          FailureNextStep => {
            DialogAction => {
              Type => 'ElicitIntent'
              , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
              SlotToElicit        => 'MyName',    # min: 1, max: 100
              SuppressNextMessage => 1,           # OPTIONAL
            },    # OPTIONAL
            Intent => {
              Name  => 'MyName',    # min: 1, max: 100
              Slots => {
                'MyName' => {
                  Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                  Value => {
                    InterpretedValue => 'MyNonEmptyString',   # min: 1; OPTIONAL
                  },    # OPTIONAL
                  Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                },    # key: min: 1, max: 100
              },    # OPTIONAL
            },    # OPTIONAL
            SessionAttributes => {
              'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
            },    # OPTIONAL
          },
          FailureResponse => {
            MessageGroups => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  ...
                ],    # max: 2; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },    # OPTIONAL
          SuccessConditional => {
            Active              => 1,    # OPTIONAL
            ConditionalBranches => [
              {
                Condition => {
                  ExpressionString =>
                    'MyConditionExpression',    # min: 1, max: 1024

                },
                Name     => 'MyName',           # min: 1, max: 100
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 4
            DefaultBranch => {
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },

          },    # OPTIONAL
          SuccessNextStep => {
            DialogAction => {
              Type => 'ElicitIntent'
              , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
              SlotToElicit        => 'MyName',    # min: 1, max: 100
              SuppressNextMessage => 1,           # OPTIONAL
            },    # OPTIONAL
            Intent => {
              Name  => 'MyName',    # min: 1, max: 100
              Slots => {
                'MyName' => {
                  Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                  Value => {
                    InterpretedValue => 'MyNonEmptyString',   # min: 1; OPTIONAL
                  },    # OPTIONAL
                  Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                },    # key: min: 1, max: 100
              },    # OPTIONAL
            },    # OPTIONAL
            SessionAttributes => {
              'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
            },    # OPTIONAL
          },
          SuccessResponse => {
            MessageGroups => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  ...
                ],    # max: 2; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },    # OPTIONAL
          TimeoutConditional => {
            Active              => 1,    # OPTIONAL
            ConditionalBranches => [
              {
                Condition => {
                  ExpressionString =>
                    'MyConditionExpression',    # min: 1, max: 1024

                },
                Name     => 'MyName',           # min: 1, max: 100
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 4
            DefaultBranch => {
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },

          },    # OPTIONAL
          TimeoutNextStep => {
            DialogAction => {
              Type => 'ElicitIntent'
              , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
              SlotToElicit        => 'MyName',    # min: 1, max: 100
              SuppressNextMessage => 1,           # OPTIONAL
            },    # OPTIONAL
            Intent => {
              Name  => 'MyName',    # min: 1, max: 100
              Slots => {
                'MyName' => {
                  Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                  Value => {
                    InterpretedValue => 'MyNonEmptyString',   # min: 1; OPTIONAL
                  },    # OPTIONAL
                  Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                },    # key: min: 1, max: 100
              },    # OPTIONAL
            },    # OPTIONAL
            SessionAttributes => {
              'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
            },    # OPTIONAL
          },
          TimeoutResponse => {
            MessageGroups => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  ...
                ],    # max: 2; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InitialResponseSetting => {
        CodeHook => {
          Active                    => 1,    # OPTIONAL
          EnableCodeHookInvocation  => 1,    # OPTIONAL
          PostCodeHookSpecification => {
            FailureConditional => {
              Active              => 1,      # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            FailureNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            FailureResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
            SuccessConditional => {
              Active              => 1,    # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            SuccessNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            SuccessResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
            TimeoutConditional => {
              Active              => 1,    # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            TimeoutNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            TimeoutResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          InvocationLabel => 'MyName',    # min: 1, max: 100
        },    # OPTIONAL
        Conditional => {
          Active              => 1,    # OPTIONAL
          ConditionalBranches => [
            {
              Condition => {
                ExpressionString => 'MyConditionExpression', # min: 1, max: 1024

              },
              Name     => 'MyName',                          # min: 1, max: 100
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 4
          DefaultBranch => {
            NextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            Response => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        InitialResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
        NextStep => {
          DialogAction => {
            Type => 'ElicitIntent'
            , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
            SlotToElicit        => 'MyName',    # min: 1, max: 100
            SuppressNextMessage => 1,           # OPTIONAL
          },    # OPTIONAL
          Intent => {
            Name  => 'MyName',    # min: 1, max: 100
            Slots => {
              'MyName' => {
                Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                Value => {
                  InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                },    # OPTIONAL
                Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
              },    # key: min: 1, max: 100
            },    # OPTIONAL
          },    # OPTIONAL
          SessionAttributes => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
          },    # OPTIONAL
        },
      },    # OPTIONAL
      InputContexts => [
        {
          Name => 'MyName',    # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      IntentClosingSetting => {
        Active          => 1,    # OPTIONAL
        ClosingResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
        Conditional => {
          Active              => 1,    # OPTIONAL
          ConditionalBranches => [
            {
              Condition => {
                ExpressionString => 'MyConditionExpression', # min: 1, max: 1024

              },
              Name     => 'MyName',                          # min: 1, max: 100
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 4
          DefaultBranch => {
            NextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            Response => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        NextStep => {
          DialogAction => {
            Type => 'ElicitIntent'
            , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
            SlotToElicit        => 'MyName',    # min: 1, max: 100
            SuppressNextMessage => 1,           # OPTIONAL
          },    # OPTIONAL
          Intent => {
            Name  => 'MyName',    # min: 1, max: 100
            Slots => {
              'MyName' => {
                Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                Value => {
                  InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                },    # OPTIONAL
                Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
              },    # key: min: 1, max: 100
            },    # OPTIONAL
          },    # OPTIONAL
          SessionAttributes => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
          },    # OPTIONAL
        },
      },    # OPTIONAL
      IntentConfirmationSetting => {
        PromptSpecification => {
          MaxRetries    => 1,    # max: 5
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt           => 1,    # OPTIONAL
          MessageSelectionStrategy =>
            'Random',                       # values: Random, Ordered; OPTIONAL
          PromptAttemptsSpecification => {
            'Initial' => {
              AllowedInputTypes => {
                AllowAudioInput => 1,    # OPTIONAL
                AllowDTMFInput  => 1,    # OPTIONAL

              },
              AllowInterrupt                 => 1,    # OPTIONAL
              AudioAndDTMFInputSpecification => {
                StartTimeoutMs     => 1,              # min: 1
                AudioSpecification => {
                  EndTimeoutMs => 1,                  # min: 1
                  MaxLengthMs  => 1,                  # min: 1

                },    # OPTIONAL
                DtmfSpecification => {
                  DeletionCharacter => 'MyDTMFCharacter',
                  EndCharacter      => 'MyDTMFCharacter',
                  EndTimeoutMs      => 1,                   # min: 1
                  MaxLength         => 1,                   # min: 1, max: 1024

                },    # OPTIONAL
              },    # OPTIONAL
              TextInputSpecification => {
                StartTimeoutMs => 1,    # min: 1

              },    # OPTIONAL
            },    # key: values: Initial, Retry1, Retry2, Retry3, Retry4, Retry5
          },    # OPTIONAL
        },
        Active   => 1,    # OPTIONAL
        CodeHook => {
          Active                    => 1,    # OPTIONAL
          EnableCodeHookInvocation  => 1,    # OPTIONAL
          PostCodeHookSpecification => {
            FailureConditional => {
              Active              => 1,      # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            FailureNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            FailureResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
            SuccessConditional => {
              Active              => 1,    # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            SuccessNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            SuccessResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
            TimeoutConditional => {
              Active              => 1,    # OPTIONAL
              ConditionalBranches => [
                {
                  Condition => {
                    ExpressionString =>
                      'MyConditionExpression',    # min: 1, max: 1024

                  },
                  Name     => 'MyName',           # min: 1, max: 100
                  NextStep => {
                    DialogAction => {
                      Type => 'ElicitIntent'
                      , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                      SlotToElicit        => 'MyName',    # min: 1, max: 100
                      SuppressNextMessage => 1,           # OPTIONAL
                    },    # OPTIONAL
                    Intent => {
                      Name  => 'MyName',    # min: 1, max: 100
                      Slots => {
                        'MyName' => {
                          Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                          Value => {
                            InterpretedValue =>
                              'MyNonEmptyString',    # min: 1; OPTIONAL
                          },    # OPTIONAL
                          Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                        },    # key: min: 1, max: 100
                      },    # OPTIONAL
                    },    # OPTIONAL
                    SessionAttributes => {
                      'MyNonEmptyString' => 'MyString',  # key: min: 1; OPTIONAL
                    },    # OPTIONAL
                  },
                  Response => {
                    MessageGroups => [
                      {
                        Message => {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        Variations => [
                          {
                            CustomPayload => {
                              Value =>
                                'MyCustomPayloadValue',    # min: 1, max: 1000

                            },    # OPTIONAL
                            ImageResponseCard => {
                              Title   => 'MyAttachmentTitle', # min: 1, max: 250
                              Buttons => [
                                {
                                  Text  => 'MyButtonText',     # min: 1, max: 50
                                  Value => 'MyButtonValue',    # min: 1, max: 50

                                },
                                ...
                              ],    # max: 5; OPTIONAL
                              ImageUrl =>
                                'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                              Subtitle =>
                                'MyAttachmentTitle',    # min: 1, max: 250
                            },    # OPTIONAL
                            PlainTextMessage => {
                              Value =>
                                'MyPlainTextMessageValue',   # min: 1, max: 1000

                            },    # OPTIONAL
                            SsmlMessage => {
                              Value => 'MySSMLMessageValue', # min: 1, max: 1000

                            },    # OPTIONAL
                          },
                          ...
                        ],    # max: 2; OPTIONAL
                      },
                      ...
                    ],    # min: 1, max: 5
                    AllowInterrupt => 1,    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 4
              DefaultBranch => {
                NextStep => {
                  DialogAction => {
                    Type => 'ElicitIntent'
                    , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                    SlotToElicit        => 'MyName',    # min: 1, max: 100
                    SuppressNextMessage => 1,           # OPTIONAL
                  },    # OPTIONAL
                  Intent => {
                    Name  => 'MyName',    # min: 1, max: 100
                    Slots => {
                      'MyName' => {
                        Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                        Value => {
                          InterpretedValue =>
                            'MyNonEmptyString',    # min: 1; OPTIONAL
                        },    # OPTIONAL
                        Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                  },    # OPTIONAL
                  SessionAttributes => {
                    'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                  },    # OPTIONAL
                },
                Response => {
                  MessageGroups => [
                    {
                      Message => {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      Variations => [
                        {
                          CustomPayload => {
                            Value => 'MyCustomPayloadValue', # min: 1, max: 1000

                          },    # OPTIONAL
                          ImageResponseCard => {
                            Title   => 'MyAttachmentTitle',   # min: 1, max: 250
                            Buttons => [
                              {
                                Text  => 'MyButtonText',     # min: 1, max: 50
                                Value => 'MyButtonValue',    # min: 1, max: 50

                              },
                              ...
                            ],    # max: 5; OPTIONAL
                            ImageUrl =>
                              'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                            Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                          },    # OPTIONAL
                          PlainTextMessage => {
                            Value =>
                              'MyPlainTextMessageValue',    # min: 1, max: 1000

                          },    # OPTIONAL
                          SsmlMessage => {
                            Value => 'MySSMLMessageValue',   # min: 1, max: 1000

                          },    # OPTIONAL
                        },
                        ...
                      ],    # max: 2; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5
                  AllowInterrupt => 1,    # OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
            TimeoutNextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            TimeoutResponse => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          InvocationLabel => 'MyName',    # min: 1, max: 100
        },    # OPTIONAL
        ConfirmationConditional => {
          Active              => 1,    # OPTIONAL
          ConditionalBranches => [
            {
              Condition => {
                ExpressionString => 'MyConditionExpression', # min: 1, max: 1024

              },
              Name     => 'MyName',                          # min: 1, max: 100
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 4
          DefaultBranch => {
            NextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            Response => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        ConfirmationNextStep => {
          DialogAction => {
            Type => 'ElicitIntent'
            , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
            SlotToElicit        => 'MyName',    # min: 1, max: 100
            SuppressNextMessage => 1,           # OPTIONAL
          },    # OPTIONAL
          Intent => {
            Name  => 'MyName',    # min: 1, max: 100
            Slots => {
              'MyName' => {
                Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                Value => {
                  InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                },    # OPTIONAL
                Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
              },    # key: min: 1, max: 100
            },    # OPTIONAL
          },    # OPTIONAL
          SessionAttributes => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
          },    # OPTIONAL
        },
        ConfirmationResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
        DeclinationConditional => {
          Active              => 1,    # OPTIONAL
          ConditionalBranches => [
            {
              Condition => {
                ExpressionString => 'MyConditionExpression', # min: 1, max: 1024

              },
              Name     => 'MyName',                          # min: 1, max: 100
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 4
          DefaultBranch => {
            NextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            Response => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        DeclinationNextStep => {
          DialogAction => {
            Type => 'ElicitIntent'
            , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
            SlotToElicit        => 'MyName',    # min: 1, max: 100
            SuppressNextMessage => 1,           # OPTIONAL
          },    # OPTIONAL
          Intent => {
            Name  => 'MyName',    # min: 1, max: 100
            Slots => {
              'MyName' => {
                Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                Value => {
                  InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                },    # OPTIONAL
                Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
              },    # key: min: 1, max: 100
            },    # OPTIONAL
          },    # OPTIONAL
          SessionAttributes => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
          },    # OPTIONAL
        },
        DeclinationResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
        ElicitationCodeHook => {
          EnableCodeHookInvocation => 1,           # OPTIONAL
          InvocationLabel          => 'MyName',    # min: 1, max: 100
        },    # OPTIONAL
        FailureConditional => {
          Active              => 1,    # OPTIONAL
          ConditionalBranches => [
            {
              Condition => {
                ExpressionString => 'MyConditionExpression', # min: 1, max: 1024

              },
              Name     => 'MyName',                          # min: 1, max: 100
              NextStep => {
                DialogAction => {
                  Type => 'ElicitIntent'
                  , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                  SlotToElicit        => 'MyName',    # min: 1, max: 100
                  SuppressNextMessage => 1,           # OPTIONAL
                },    # OPTIONAL
                Intent => {
                  Name  => 'MyName',    # min: 1, max: 100
                  Slots => {
                    'MyName' => {
                      Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                      Value => {
                        InterpretedValue =>
                          'MyNonEmptyString',    # min: 1; OPTIONAL
                      },    # OPTIONAL
                      Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                },    # OPTIONAL
                SessionAttributes => {
                  'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
                },    # OPTIONAL
              },
              Response => {
                MessageGroups => [
                  {
                    Message => {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    Variations => [
                      {
                        CustomPayload => {
                          Value => 'MyCustomPayloadValue',   # min: 1, max: 1000

                        },    # OPTIONAL
                        ImageResponseCard => {
                          Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                          Buttons => [
                            {
                              Text  => 'MyButtonText',     # min: 1, max: 50
                              Value => 'MyButtonValue',    # min: 1, max: 50

                            },
                            ...
                          ],    # max: 5; OPTIONAL
                          ImageUrl =>
                            'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                          Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                        },    # OPTIONAL
                        PlainTextMessage => {
                          Value =>
                            'MyPlainTextMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                        SsmlMessage => {
                          Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                        },    # OPTIONAL
                      },
                      ...
                    ],    # max: 2; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5
                AllowInterrupt => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 4
          DefaultBranch => {
            NextStep => {
              DialogAction => {
                Type => 'ElicitIntent'
                , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
                SlotToElicit        => 'MyName',    # min: 1, max: 100
                SuppressNextMessage => 1,           # OPTIONAL
              },    # OPTIONAL
              Intent => {
                Name  => 'MyName',    # min: 1, max: 100
                Slots => {
                  'MyName' => {
                    Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                    Value => {
                      InterpretedValue => 'MyNonEmptyString', # min: 1; OPTIONAL
                    },    # OPTIONAL
                    Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },    # OPTIONAL
              SessionAttributes => {
                'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
              },    # OPTIONAL
            },
            Response => {
              MessageGroups => [
                {
                  Message => {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',     # min: 1, max: 50
                          Value => 'MyButtonValue',    # min: 1, max: 50

                        },
                        ...
                      ],    # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                      Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                    },    # OPTIONAL
                    PlainTextMessage => {
                      Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    SsmlMessage => {
                      Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                  },
                  Variations => [
                    {
                      CustomPayload => {
                        Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                      ImageResponseCard => {
                        Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                        Buttons => [
                          {
                            Text  => 'MyButtonText',     # min: 1, max: 50
                            Value => 'MyButtonValue',    # min: 1, max: 50

                          },
                          ...
                        ],    # max: 5; OPTIONAL
                        ImageUrl =>
                          'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                        Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                      },    # OPTIONAL
                      PlainTextMessage => {
                        Value => 'MyPlainTextMessageValue',  # min: 1, max: 1000

                      },    # OPTIONAL
                      SsmlMessage => {
                        Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                      },    # OPTIONAL
                    },
                    ...
                  ],    # max: 2; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              AllowInterrupt => 1,    # OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        FailureNextStep => {
          DialogAction => {
            Type => 'ElicitIntent'
            , # values: ElicitIntent, StartIntent, ElicitSlot, EvaluateConditional, InvokeDialogCodeHook, ConfirmIntent, FulfillIntent, CloseIntent, EndConversation
            SlotToElicit        => 'MyName',    # min: 1, max: 100
            SuppressNextMessage => 1,           # OPTIONAL
          },    # OPTIONAL
          Intent => {
            Name  => 'MyName',    # min: 1, max: 100
            Slots => {
              'MyName' => {
                Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                Value => {
                  InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                },    # OPTIONAL
                Values => [ <SlotValueOverride>, ... ],    # OPTIONAL
              },    # key: min: 1, max: 100
            },    # OPTIONAL
          },    # OPTIONAL
          SessionAttributes => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
          },    # OPTIONAL
        },
        FailureResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      KendraConfiguration => {
        KendraIndex       => 'MyKendraIndexArn',    # min: 32, max: 2048
        QueryFilterString =>
          'MyQueryFilterString',    # min: 1, max: 5000; OPTIONAL
        QueryFilterStringEnabled => 1,
      },    # OPTIONAL
      OutputContexts => [
        {
          Name                => 'MyName',    # min: 1, max: 100
          TimeToLiveInSeconds => 1,           # min: 5, max: 86400
          TurnsToLive         => 1,           # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      ParentIntentSignature         => 'MyIntentSignature',    # OPTIONAL
      QInConnectIntentConfiguration => {
        QInConnectAssistantConfiguration => {
          AssistantArn => 'MyQInConnectAssistantARN',

        },                                                     # OPTIONAL
      },    # OPTIONAL
      QnAIntentConfiguration => {
        BedrockModelConfiguration => {
          ModelArn     => 'MyBedrockModelArn',
          CustomPrompt =>
            'MyBedrockModelCustomPrompt',    # min: 1, max: 4000; OPTIONAL
          Guardrail => {
            Identifier => 'MyBedrockGuardrailIdentifier',    # min: 1, max: 2048
            Version    => 'MyBedrockGuardrailVersion',

          },    # OPTIONAL
          TraceStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        DataSourceConfiguration => {
          BedrockKnowledgeStoreConfiguration => {
            BedrockKnowledgeBaseArn =>
              'MyBedrockKnowledgeBaseArn',    # min: 1, max: 200
            ExactResponse       => 1,
            ExactResponseFields => {
              AnswerField => 'MyAnswerField',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          KendraConfiguration => {
            KendraIndex       => 'MyKendraIndexArn',    # min: 32, max: 2048
            ExactResponse     => 1,
            QueryFilterString =>
              'MyQueryFilterString',    # min: 1, max: 5000; OPTIONAL
            QueryFilterStringEnabled => 1,
          },    # OPTIONAL
          OpensearchConfiguration => {
            DomainEndpoint      => 'MyDomainEndpoint',
            IndexName           => 'MyOSIndexName',      # min: 1, max: 255
            ExactResponse       => 1,
            ExactResponseFields => {
              AnswerField   => 'MyAnswerField',          # OPTIONAL
              QuestionField => 'MyQuestionField',

            },    # OPTIONAL
            IncludeFields => [ 'MyIncludeField', ... ]
            ,     # min: 1, max: 5; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SampleUtterances => [
        {
          Utterance => 'MyUtterance',

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BotId                  = $CreateIntentResponse->BotId;
    my $BotVersion             = $CreateIntentResponse->BotVersion;
    my $CreationDateTime       = $CreateIntentResponse->CreationDateTime;
    my $Description            = $CreateIntentResponse->Description;
    my $DialogCodeHook         = $CreateIntentResponse->DialogCodeHook;
    my $FulfillmentCodeHook    = $CreateIntentResponse->FulfillmentCodeHook;
    my $InitialResponseSetting = $CreateIntentResponse->InitialResponseSetting;
    my $InputContexts          = $CreateIntentResponse->InputContexts;
    my $IntentClosingSetting   = $CreateIntentResponse->IntentClosingSetting;
    my $IntentConfirmationSetting =
      $CreateIntentResponse->IntentConfirmationSetting;
    my $IntentId              = $CreateIntentResponse->IntentId;
    my $IntentName            = $CreateIntentResponse->IntentName;
    my $KendraConfiguration   = $CreateIntentResponse->KendraConfiguration;
    my $LocaleId              = $CreateIntentResponse->LocaleId;
    my $OutputContexts        = $CreateIntentResponse->OutputContexts;
    my $ParentIntentSignature = $CreateIntentResponse->ParentIntentSignature;
    my $QInConnectIntentConfiguration =
      $CreateIntentResponse->QInConnectIntentConfiguration;
    my $QnAIntentConfiguration = $CreateIntentResponse->QnAIntentConfiguration;
    my $SampleUtterances       = $CreateIntentResponse->SampleUtterances;

    # Returns a L<Paws::LexModelsV2::CreateIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateIntent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with this intent.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with this intent.



=head2 Description => Str

A description of the intent. Use the description to help identify the
intent in lists.



=head2 DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>

Specifies that Amazon Lex invokes the alias Lambda function for each
user input. You can invoke this Lambda function to personalize user
interaction.

For example, suppose that your bot determines that the user's name is
John. You Lambda function might retrieve John's information from a
backend database and prepopulate some of the values. For example, if
you find that John is gluten intolerant, you might set the
corresponding intent slot, C<glutenIntolerant> to C<true>. You might
find John's phone number and set the corresponding session attribute.



=head2 FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>

Specifies that Amazon Lex invokes the alias Lambda function when the
intent is ready for fulfillment. You can invoke this function to
complete the bot's transaction with the user.

For example, in a pizza ordering bot, the Lambda function can look up
the closest pizza restaurant to the customer's location and then place
an order on the customer's behalf.



=head2 InitialResponseSetting => L<Paws::LexModelsV2::InitialResponseSetting>

Configuration settings for the response that is sent to the user at the
beginning of a conversation, before eliciting slot values.



=head2 InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]

A list of contexts that must be active for this intent to be considered
by Amazon Lex.

When an intent has an input context list, Amazon Lex only considers
using the intent in an interaction with the user when the specified
contexts are included in the active context list for the session. If
the contexts are not active, then Amazon Lex will not use the intent.

A context can be automatically activated using the C<outputContexts>
property or it can be set at runtime.

For example, if there are two intents with different input contexts
that respond to the same utterances, only the intent with the active
context will respond.

An intent may have up to 5 input contexts. If an intent has multiple
input contexts, all of the contexts must be active to consider the
intent.



=head2 IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>

Sets the response that Amazon Lex sends to the user when the intent is
closed.



=head2 IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>

Provides prompts that Amazon Lex sends to the user to confirm the
completion of an intent. If the user answers "no," the settings contain
a statement that is sent to the user to end the intent.



=head2 B<REQUIRED> IntentName => Str

The name of the intent. Intent names must be unique in the locale that
contains the intent and cannot match the name of any built-in intent.



=head2 KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>

Configuration information required to use the
C<AMAZON.KendraSearchIntent> intent to connect to an Amazon Kendra
index. The C<AMAZON.KendraSearchIntent> intent is called when Amazon
Lex can't determine another intent to invoke.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where this intent is used.
All of the bots, slot types, and slots used by the intent must have the
same locale. For more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]

A lists of contexts that the intent activates when it is fulfilled.

You can use an output context to indicate the intents that Amazon Lex
should consider for the next turn of the conversation with a customer.

When you use the C<outputContextsList> property, all of the contexts
specified in the list are activated when the intent is fulfilled. You
can set up to 10 output contexts. You can also set the number of
conversation turns that the context should be active, or the length of
time that the context should be active.



=head2 ParentIntentSignature => Str

A unique identifier for the built-in intent to base this intent on.



=head2 QInConnectIntentConfiguration => L<Paws::LexModelsV2::QInConnectIntentConfiguration>

Qinconnect intent configuration details for the create intent request.



=head2 QnAIntentConfiguration => L<Paws::LexModelsV2::QnAIntentConfiguration>

Specifies the configuration of the built-in C<Amazon.QnAIntent>. The
C<AMAZON.QnAIntent> intent is called when Amazon Lex can't determine
another intent to invoke. If you specify this field, you can't specify
the C<kendraConfiguration> field.



=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

An array of strings that a user might say to signal the intent. For
example, "I want a pizza", or "I want a {PizzaSize} pizza".

In an utterance, slot names are enclosed in curly braces ("{", "}") to
indicate where they should be displayed in the utterance shown to the
user..




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntent in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

