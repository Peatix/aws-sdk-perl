
package Paws::AmplifyUIBuilder::CreateComponent;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has ComponentToCreate => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CreateComponentData', traits => ['NameInRequest'], request_name => 'componentToCreate', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ComponentToCreate');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/components');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::CreateComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CreateComponent - Arguments for method CreateComponent on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComponent on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method CreateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComponent.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $CreateComponentResponse = $amplifyuibuilder->CreateComponent(
      AppId             => 'MyString',
      ComponentToCreate => {
        BindingProperties => {
          'MyString' => {
            BindingProperties => {
              Bucket       => 'MyString',
              DefaultValue => 'MyString',
              Field        => 'MyString',
              Key          => 'MyString',
              Model        => 'MyString',
              Predicates   => [
                {
                  And         => <PredicateList>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyOperandType',    # OPTIONAL
                  Operator    => 'MyString',
                  Or          => <PredicateList>,
                },
                ...
              ],    # OPTIONAL
              SlotName      => 'MyString',
              UserAttribute => 'MyString',
            },    # OPTIONAL
            DefaultValue => 'MyString',
            Type         => 'MyString',
          },
        },
        ComponentType => 'MyComponentType',    # min: 1, max: 255
        Name          => 'MyComponentName',    # min: 1, max: 255
        Overrides     => { 'MyString' => { 'MyString' => 'MyString', }, },
        Properties    => {
          'MyString' => {
            BindingProperties => {
              Property => 'MyString',
              Field    => 'MyString',
            },    # OPTIONAL
            Bindings => {
              'MyString' => {
                Element  => 'MyString',
                Property => 'MyString',

              },
            },    # OPTIONAL
            CollectionBindingProperties => {
              Property => 'MyString',
              Field    => 'MyString',
            },    # OPTIONAL
            ComponentName => 'MyString',
            Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
            Condition     => {
              Else        => <ComponentProperty>,
              Field       => 'MyString',
              Operand     => 'MyString',
              OperandType => 'MyString',
              Operator    => 'MyString',
              Property    => 'MyString',
              Then        => <ComponentProperty>,
            },                                                # OPTIONAL
            Configured    => 1,                               # OPTIONAL
            DefaultValue  => 'MyString',
            Event         => 'MyString',
            ImportedValue => 'MyString',
            Model         => 'MyString',
            Property      => 'MyString',
            Type          => 'MyString',
            UserAttribute => 'MyString',
            Value         => 'MyString',
          },
        },
        Variants => [
          {
            Overrides     => { 'MyString' => { 'MyString' => 'MyString', }, },
            VariantValues => { 'MyString' => 'MyString', },    # OPTIONAL
          },
          ...
        ],
        Children => [
          {
            ComponentType => 'MyString',
            Name          => 'MyString',
            Properties    => {
              'MyString' => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
            },
            Children => <ComponentChildList>,
            Events   => {
              'MyString' => {
                Action       => 'MyString',
                BindingEvent => 'MyString',
                Parameters   => {
                  Anchor => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                  Fields => {
                    'MyString' => {
                      BindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },    # OPTIONAL
                      Bindings => {
                        'MyString' => {
                          Element  => 'MyString',
                          Property => 'MyString',

                        },
                      },    # OPTIONAL
                      CollectionBindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },    # OPTIONAL
                      ComponentName => 'MyString',
                      Concat        => [ <ComponentProperty>, ... ],  # OPTIONAL
                      Condition     => {
                        Else        => <ComponentProperty>,
                        Field       => 'MyString',
                        Operand     => 'MyString',
                        OperandType => 'MyString',
                        Operator    => 'MyString',
                        Property    => 'MyString',
                        Then        => <ComponentProperty>,
                      },                                              # OPTIONAL
                      Configured    => 1,                             # OPTIONAL
                      DefaultValue  => 'MyString',
                      Event         => 'MyString',
                      ImportedValue => 'MyString',
                      Model         => 'MyString',
                      Property      => 'MyString',
                      Type          => 'MyString',
                      UserAttribute => 'MyString',
                      Value         => 'MyString',
                    },
                  },
                  Global => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                  Id => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                  Model => 'MyString',
                  State => {
                    ComponentName => 'MyString',
                    Property      => 'MyString',
                    Set           => {
                      BindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },    # OPTIONAL
                      Bindings => {
                        'MyString' => {
                          Element  => 'MyString',
                          Property => 'MyString',

                        },
                      },    # OPTIONAL
                      CollectionBindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },    # OPTIONAL
                      ComponentName => 'MyString',
                      Concat        => [ <ComponentProperty>, ... ],  # OPTIONAL
                      Condition     => {
                        Else        => <ComponentProperty>,
                        Field       => 'MyString',
                        Operand     => 'MyString',
                        OperandType => 'MyString',
                        Operator    => 'MyString',
                        Property    => 'MyString',
                        Then        => <ComponentProperty>,
                      },                                              # OPTIONAL
                      Configured    => 1,                             # OPTIONAL
                      DefaultValue  => 'MyString',
                      Event         => 'MyString',
                      ImportedValue => 'MyString',
                      Model         => 'MyString',
                      Property      => 'MyString',
                      Type          => 'MyString',
                      UserAttribute => 'MyString',
                      Value         => 'MyString',
                    },

                  },    # OPTIONAL
                  Target => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                  Type => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                  Url => {
                    BindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    Bindings => {
                      'MyString' => {
                        Element  => 'MyString',
                        Property => 'MyString',

                      },
                    },    # OPTIONAL
                    CollectionBindingProperties => {
                      Property => 'MyString',
                      Field    => 'MyString',
                    },    # OPTIONAL
                    ComponentName => 'MyString',
                    Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                    Condition     => {
                      Else        => <ComponentProperty>,
                      Field       => 'MyString',
                      Operand     => 'MyString',
                      OperandType => 'MyString',
                      Operator    => 'MyString',
                      Property    => 'MyString',
                      Then        => <ComponentProperty>,
                    },                                                # OPTIONAL
                    Configured    => 1,                               # OPTIONAL
                    DefaultValue  => 'MyString',
                    Event         => 'MyString',
                    ImportedValue => 'MyString',
                    Model         => 'MyString',
                    Property      => 'MyString',
                    Type          => 'MyString',
                    UserAttribute => 'MyString',
                    Value         => 'MyString',
                  },
                },    # OPTIONAL
              },
            },    # OPTIONAL
            SourceId => 'MyString',
          },
          ...
        ],    # OPTIONAL
        CollectionProperties => {
          'MyString' => {
            Model       => 'MyString',
            Identifiers => [ 'MyString', ... ],    # OPTIONAL
            Predicate   => {
              And         => <PredicateList>,
              Field       => 'MyString',
              Operand     => 'MyString',
              OperandType => 'MyOperandType',      # OPTIONAL
              Operator    => 'MyString',
              Or          => <PredicateList>,
            },
            Sort => [
              {
                Direction => 'ASC',                # values: ASC, DESC
                Field     => 'MyString',

              },
              ...
            ],    # OPTIONAL
          },
        },    # OPTIONAL
        Events => {
          'MyString' => {
            Action       => 'MyString',
            BindingEvent => 'MyString',
            Parameters   => {
              Anchor => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
              Fields => {
                'MyString' => {
                  BindingProperties => {
                    Property => 'MyString',
                    Field    => 'MyString',
                  },    # OPTIONAL
                  Bindings => {
                    'MyString' => {
                      Element  => 'MyString',
                      Property => 'MyString',

                    },
                  },    # OPTIONAL
                  CollectionBindingProperties => {
                    Property => 'MyString',
                    Field    => 'MyString',
                  },    # OPTIONAL
                  ComponentName => 'MyString',
                  Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                  Condition     => {
                    Else        => <ComponentProperty>,
                    Field       => 'MyString',
                    Operand     => 'MyString',
                    OperandType => 'MyString',
                    Operator    => 'MyString',
                    Property    => 'MyString',
                    Then        => <ComponentProperty>,
                  },                                                # OPTIONAL
                  Configured    => 1,                               # OPTIONAL
                  DefaultValue  => 'MyString',
                  Event         => 'MyString',
                  ImportedValue => 'MyString',
                  Model         => 'MyString',
                  Property      => 'MyString',
                  Type          => 'MyString',
                  UserAttribute => 'MyString',
                  Value         => 'MyString',
                },
              },
              Global => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
              Id => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
              Model => 'MyString',
              State => {
                ComponentName => 'MyString',
                Property      => 'MyString',
                Set           => {
                  BindingProperties => {
                    Property => 'MyString',
                    Field    => 'MyString',
                  },    # OPTIONAL
                  Bindings => {
                    'MyString' => {
                      Element  => 'MyString',
                      Property => 'MyString',

                    },
                  },    # OPTIONAL
                  CollectionBindingProperties => {
                    Property => 'MyString',
                    Field    => 'MyString',
                  },    # OPTIONAL
                  ComponentName => 'MyString',
                  Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                  Condition     => {
                    Else        => <ComponentProperty>,
                    Field       => 'MyString',
                    Operand     => 'MyString',
                    OperandType => 'MyString',
                    Operator    => 'MyString',
                    Property    => 'MyString',
                    Then        => <ComponentProperty>,
                  },                                                # OPTIONAL
                  Configured    => 1,                               # OPTIONAL
                  DefaultValue  => 'MyString',
                  Event         => 'MyString',
                  ImportedValue => 'MyString',
                  Model         => 'MyString',
                  Property      => 'MyString',
                  Type          => 'MyString',
                  UserAttribute => 'MyString',
                  Value         => 'MyString',
                },

              },    # OPTIONAL
              Target => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
              Type => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
              Url => {
                BindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                Bindings => {
                  'MyString' => {
                    Element  => 'MyString',
                    Property => 'MyString',

                  },
                },    # OPTIONAL
                CollectionBindingProperties => {
                  Property => 'MyString',
                  Field    => 'MyString',
                },    # OPTIONAL
                ComponentName => 'MyString',
                Concat        => [ <ComponentProperty>, ... ],    # OPTIONAL
                Condition     => {
                  Else        => <ComponentProperty>,
                  Field       => 'MyString',
                  Operand     => 'MyString',
                  OperandType => 'MyString',
                  Operator    => 'MyString',
                  Property    => 'MyString',
                  Then        => <ComponentProperty>,
                },                                                # OPTIONAL
                Configured    => 1,                               # OPTIONAL
                DefaultValue  => 'MyString',
                Event         => 'MyString',
                ImportedValue => 'MyString',
                Model         => 'MyString',
                Property      => 'MyString',
                Type          => 'MyString',
                UserAttribute => 'MyString',
                Value         => 'MyString',
              },
            },    # OPTIONAL
          },
        },    # OPTIONAL
        SchemaVersion => 'MyString',
        SourceId      => 'MyString',
        Tags          => {
          'MyTagKey' =>
            'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
        },    # OPTIONAL
      },
      EnvironmentName => 'MyString',
      ClientToken     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $CreateComponentResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::CreateComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/CreateComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app to associate with the component.



=head2 ClientToken => Str

The unique client token.



=head2 B<REQUIRED> ComponentToCreate => L<Paws::AmplifyUIBuilder::CreateComponentData>

Represents the configuration of the component to create.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComponent in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

