
package Paws::AmplifyUIBuilder::UpdateComponent;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has UpdatedComponent => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::UpdateComponentData', traits => ['NameInRequest'], request_name => 'updatedComponent', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdatedComponent');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/components/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::UpdateComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::UpdateComponent - Arguments for method UpdateComponent on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponent on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method UpdateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponent.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $UpdateComponentResponse = $amplifyuibuilder->UpdateComponent(
      AppId            => 'MyString',
      EnvironmentName  => 'MyString',
      Id               => 'MyUuid',
      UpdatedComponent => {
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
        },    # OPTIONAL
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
        ComponentType => 'MyComponentType',    # min: 1, max: 255; OPTIONAL
        Events        => {
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
        Id        => 'MyUuid',
        Name      => 'MyComponentName',    # min: 1, max: 255; OPTIONAL
        Overrides => { 'MyString' => { 'MyString' => 'MyString', }, }
        ,                                  # OPTIONAL
        Properties => {
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
        SchemaVersion => 'MyString',
        SourceId      => 'MyString',
        Variants      => [
          {
            Overrides => { 'MyString' => { 'MyString' => 'MyString', }, }
            ,                                                  # OPTIONAL
            VariantValues => { 'MyString' => 'MyString', },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      ClientToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $UpdateComponentResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::UpdateComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/UpdateComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for the Amplify app.



=head2 ClientToken => Str

The unique client token.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is part of the Amplify app.



=head2 B<REQUIRED> Id => Str

The unique ID for the component.



=head2 B<REQUIRED> UpdatedComponent => L<Paws::AmplifyUIBuilder::UpdateComponentData>

The configuration of the updated component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponent in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

