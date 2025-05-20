
package Paws::LexModelsV2::CreateSlot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MultipleValuesSetting => (is => 'ro', isa => 'Paws::LexModelsV2::MultipleValuesSetting', traits => ['NameInRequest'], request_name => 'multipleValuesSetting');
  has ObfuscationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::ObfuscationSetting', traits => ['NameInRequest'], request_name => 'obfuscationSetting');
  has SlotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotName', required => 1);
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeId');
  has SubSlotSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SubSlotSetting', traits => ['NameInRequest'], request_name => 'subSlotSetting');
  has ValueElicitationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueElicitationSetting', traits => ['NameInRequest'], request_name => 'valueElicitationSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSlot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateSlotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateSlot - Arguments for method CreateSlot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSlot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateSlot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSlot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateSlotResponse = $models - v2 -lex->CreateSlot(
      BotId                   => 'MyId',
      BotVersion              => 'MyDraftBotVersion',
      IntentId                => 'MyId',
      LocaleId                => 'MyLocaleId',
      SlotName                => 'MyName',
      ValueElicitationSetting => {
        SlotConstraint            => 'Required',    # values: Required, Optional
        DefaultValueSpecification => {
          DefaultValueList => [
            {
              DefaultValue => 'MySlotDefaultValueString',    # min: 1, max: 202

            },
            ...
          ],    # max: 10

        },    # OPTIONAL
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
        },    # OPTIONAL
        SampleUtterances => [
          {
            Utterance => 'MyUtterance',

          },
          ...
        ],    # OPTIONAL
        SlotCaptureSetting => {
          CaptureConditional => {
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
          CaptureNextStep => {
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
          CaptureResponse => {
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
                            Shape => 'Scalar',  # values: Scalar, List; OPTIONAL
                            Value => {
                              InterpretedValue =>
                                'MyNonEmptyString',    # min: 1; OPTIONAL
                            },    # OPTIONAL
                            Values => [ <SlotValueOverride>, ... ],   # OPTIONAL
                          },    # key: min: 1, max: 100
                        },    # OPTIONAL
                      },    # OPTIONAL
                      SessionAttributes => {
                        'MyNonEmptyString' =>
                          'MyString',    # key: min: 1; OPTIONAL
                      },    # OPTIONAL
                    },
                    Response => {
                      MessageGroups => [
                        {
                          Message => {
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
                          Variations => [
                            {
                              CustomPayload => {
                                Value =>
                                  'MyCustomPayloadValue',    # min: 1, max: 1000

                              },    # OPTIONAL
                              ImageResponseCard => {
                                Title => 'MyAttachmentTitle', # min: 1, max: 250
                                Buttons => [
                                  {
                                    Text  => 'MyButtonText',   # min: 1, max: 50
                                    Value => 'MyButtonValue',  # min: 1, max: 50

                                  },
                                  ...
                                ],    # max: 5; OPTIONAL
                                ImageUrl => 'MyAttachmentUrl'
                                ,     # min: 1, max: 250; OPTIONAL
                                Subtitle =>
                                  'MyAttachmentTitle',    # min: 1, max: 250
                              },    # OPTIONAL
                              PlainTextMessage => {
                                Value =>
                                  'MyPlainTextMessageValue', # min: 1, max: 1000

                              },    # OPTIONAL
                              SsmlMessage => {
                                Value =>
                                  'MySSMLMessageValue',    # min: 1, max: 1000

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
                            Shape => 'Scalar',  # values: Scalar, List; OPTIONAL
                            Value => {
                              InterpretedValue =>
                                'MyNonEmptyString',    # min: 1; OPTIONAL
                            },    # OPTIONAL
                            Values => [ <SlotValueOverride>, ... ],   # OPTIONAL
                          },    # key: min: 1, max: 100
                        },    # OPTIONAL
                      },    # OPTIONAL
                      SessionAttributes => {
                        'MyNonEmptyString' =>
                          'MyString',    # key: min: 1; OPTIONAL
                      },    # OPTIONAL
                    },
                    Response => {
                      MessageGroups => [
                        {
                          Message => {
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
                          Variations => [
                            {
                              CustomPayload => {
                                Value =>
                                  'MyCustomPayloadValue',    # min: 1, max: 1000

                              },    # OPTIONAL
                              ImageResponseCard => {
                                Title => 'MyAttachmentTitle', # min: 1, max: 250
                                Buttons => [
                                  {
                                    Text  => 'MyButtonText',   # min: 1, max: 50
                                    Value => 'MyButtonValue',  # min: 1, max: 50

                                  },
                                  ...
                                ],    # max: 5; OPTIONAL
                                ImageUrl => 'MyAttachmentUrl'
                                ,     # min: 1, max: 250; OPTIONAL
                                Subtitle =>
                                  'MyAttachmentTitle',    # min: 1, max: 250
                              },    # OPTIONAL
                              PlainTextMessage => {
                                Value =>
                                  'MyPlainTextMessageValue', # min: 1, max: 1000

                              },    # OPTIONAL
                              SsmlMessage => {
                                Value =>
                                  'MySSMLMessageValue',    # min: 1, max: 1000

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
                            Shape => 'Scalar',  # values: Scalar, List; OPTIONAL
                            Value => {
                              InterpretedValue =>
                                'MyNonEmptyString',    # min: 1; OPTIONAL
                            },    # OPTIONAL
                            Values => [ <SlotValueOverride>, ... ],   # OPTIONAL
                          },    # key: min: 1, max: 100
                        },    # OPTIONAL
                      },    # OPTIONAL
                      SessionAttributes => {
                        'MyNonEmptyString' =>
                          'MyString',    # key: min: 1; OPTIONAL
                      },    # OPTIONAL
                    },
                    Response => {
                      MessageGroups => [
                        {
                          Message => {
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
                          Variations => [
                            {
                              CustomPayload => {
                                Value =>
                                  'MyCustomPayloadValue',    # min: 1, max: 1000

                              },    # OPTIONAL
                              ImageResponseCard => {
                                Title => 'MyAttachmentTitle', # min: 1, max: 250
                                Buttons => [
                                  {
                                    Text  => 'MyButtonText',   # min: 1, max: 50
                                    Value => 'MyButtonValue',  # min: 1, max: 50

                                  },
                                  ...
                                ],    # max: 5; OPTIONAL
                                ImageUrl => 'MyAttachmentUrl'
                                ,     # min: 1, max: 250; OPTIONAL
                                Subtitle =>
                                  'MyAttachmentTitle',    # min: 1, max: 250
                              },    # OPTIONAL
                              PlainTextMessage => {
                                Value =>
                                  'MyPlainTextMessageValue', # min: 1, max: 1000

                              },    # OPTIONAL
                              SsmlMessage => {
                                Value =>
                                  'MySSMLMessageValue',    # min: 1, max: 1000

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
            InvocationLabel => 'MyName',    # min: 1, max: 100
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
        },    # OPTIONAL
        SlotResolutionSetting => {
          SlotResolutionStrategy =>
            'EnhancedFallback',    # values: EnhancedFallback, Default

        },    # OPTIONAL
        WaitAndContinueSpecification => {
          ContinueResponse => {
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
          WaitingResponse => {
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
          Active               => 1,    # OPTIONAL
          StillWaitingResponse => {
            FrequencyInSeconds => 1,    # min: 1, max: 300
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
            TimeoutInSeconds => 1,    # min: 1, max: 900
            AllowInterrupt   => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Description           => 'MyDescription',    # OPTIONAL
      MultipleValuesSetting => {
        AllowMultipleValues => 1,                  # OPTIONAL
      },    # OPTIONAL
      ObfuscationSetting => {
        ObfuscationSettingType => 'None',    # values: None, DefaultObfuscation

      },    # OPTIONAL
      SlotTypeId     => 'MyBuiltInOrCustomSlotTypeId',    # OPTIONAL
      SubSlotSetting => {
        Expression         => 'MySubSlotExpression',      # max: 640; OPTIONAL
        SlotSpecifications => {
          'MyName' => {
            SlotTypeId => 'MyBuiltInOrCustomSlotTypeId',    # min: 1, max: 25
            ValueElicitationSetting => {
              PromptSpecification => {
                MaxRetries    => 1,                         # max: 5
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
                AllowInterrupt           => 1,    # OPTIONAL
                MessageSelectionStrategy =>
                  'Random',    # values: Random, Ordered; OPTIONAL
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
                        MaxLength         => 1,    # min: 1, max: 1024

                      },    # OPTIONAL
                    },    # OPTIONAL
                    TextInputSpecification => {
                      StartTimeoutMs => 1,    # min: 1

                    },    # OPTIONAL
                  }, # key: values: Initial, Retry1, Retry2, Retry3, Retry4, Retry5
                },    # OPTIONAL
              },    # OPTIONAL
              DefaultValueSpecification => {
                DefaultValueList => [
                  {
                    DefaultValue =>
                      'MySlotDefaultValueString',    # min: 1, max: 202

                  },
                  ...
                ],    # max: 10

              },    # OPTIONAL
              SampleUtterances => [
                {
                  Utterance => 'MyUtterance',

                },
                ...
              ],    # OPTIONAL
              WaitAndContinueSpecification => {
                ContinueResponse => {
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
                WaitingResponse => {
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
                Active               => 1,    # OPTIONAL
                StillWaitingResponse => {
                  FrequencyInSeconds => 1,    # min: 1, max: 300
                  MessageGroups      => [
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
                  TimeoutInSeconds => 1,    # min: 1, max: 900
                  AllowInterrupt   => 1,    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },

          },    # key: min: 1, max: 100
        },    # max: 6; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $BotId                   = $CreateSlotResponse->BotId;
    my $BotVersion              = $CreateSlotResponse->BotVersion;
    my $CreationDateTime        = $CreateSlotResponse->CreationDateTime;
    my $Description             = $CreateSlotResponse->Description;
    my $IntentId                = $CreateSlotResponse->IntentId;
    my $LocaleId                = $CreateSlotResponse->LocaleId;
    my $MultipleValuesSetting   = $CreateSlotResponse->MultipleValuesSetting;
    my $ObfuscationSetting      = $CreateSlotResponse->ObfuscationSetting;
    my $SlotId                  = $CreateSlotResponse->SlotId;
    my $SlotName                = $CreateSlotResponse->SlotName;
    my $SlotTypeId              = $CreateSlotResponse->SlotTypeId;
    my $SubSlotSetting          = $CreateSlotResponse->SubSlotSetting;
    my $ValueElicitationSetting = $CreateSlotResponse->ValueElicitationSetting;

    # Returns a L<Paws::LexModelsV2::CreateSlotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateSlot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the slot.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with the slot.



=head2 Description => Str

A description of the slot. Use this to help identify the slot in lists.



=head2 B<REQUIRED> IntentId => Str

The identifier of the intent that contains the slot.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that the slot will be used
in. The string must match one of the supported locales. All of the
bots, intents, slot types used by the slot must have the same locale.
For more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MultipleValuesSetting => L<Paws::LexModelsV2::MultipleValuesSetting>

Indicates whether the slot returns multiple values in one response.
Multi-value slots are only available in the C<en-US> locale. If you set
this value to C<true> in any other locale, Amazon Lex throws a
C<ValidationException>.

If the C<multipleValuesSetting> is not set, the default value is
C<false>.



=head2 ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>

Determines how slot values are used in Amazon CloudWatch logs. If the
value of the C<obfuscationSetting> parameter is C<DefaultObfuscation>,
slot values are obfuscated in the log output. If the value is C<None>,
the actual value is present in the log output.

The default is to obfuscate values in the CloudWatch logs.



=head2 B<REQUIRED> SlotName => Str

The name of the slot. Slot names must be unique within the bot that
contains the slot.



=head2 SlotTypeId => Str

The unique identifier for the slot type associated with this slot. The
slot type determines the values that can be entered into the slot.



=head2 SubSlotSetting => L<Paws::LexModelsV2::SubSlotSetting>

Specifications for the constituent sub slots and the expression for the
composite slot.



=head2 B<REQUIRED> ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

Specifies prompts that Amazon Lex sends to the user to elicit a
response that provides the value for the slot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSlot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

