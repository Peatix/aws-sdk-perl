
package Paws::AmplifyUIBuilder::CreateForm;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has FormToCreate => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CreateFormData', traits => ['NameInRequest'], request_name => 'formToCreate', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'FormToCreate');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateForm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/forms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::CreateFormResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CreateForm - Arguments for method CreateForm on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateForm on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method CreateForm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateForm.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $CreateFormResponse = $amplifyuibuilder->CreateForm(
      AppId           => 'MyString',
      EnvironmentName => 'MyString',
      FormToCreate    => {
        DataType => {
          DataSourceType => 'DataStore',    # values: DataStore, Custom
          DataTypeName   => 'MyString',

        },
        Fields => {
          'MyString' => {
            Excluded  => 1,                 # OPTIONAL
            InputType => {
              Type               => 'MyString',
              DefaultChecked     => 1,            # OPTIONAL
              DefaultCountryCode => 'MyString',
              DefaultValue       => 'MyString',
              DescriptiveText    => 'MyString',
              FileUploaderConfig => {
                AcceptedFileTypes => [ 'MyString', ... ],
                AccessLevel    => 'public', # values: public, protected, private
                IsResumable    => 1,        # OPTIONAL
                MaxFileCount   => 1,        # OPTIONAL
                MaxSize        => 1,        # OPTIONAL
                ShowThumbnails => 1,        # OPTIONAL
              },    # OPTIONAL
              IsArray       => 1,            # OPTIONAL
              MaxValue      => 1.0,          # OPTIONAL
              MinValue      => 1.0,          # OPTIONAL
              Name          => 'MyString',
              Placeholder   => 'MyString',
              ReadOnly      => 1,            # OPTIONAL
              Required      => 1,            # OPTIONAL
              Step          => 1.0,          # OPTIONAL
              Value         => 'MyString',
              ValueMappings => {
                Values => [
                  {
                    Value => {
                      BindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },    # OPTIONAL
                      Concat => [ <FormInputValueProperty>, ... ],    # OPTIONAL
                      Value  => 'MyString',
                    },
                    DisplayValue => {
                      BindingProperties => {
                        Property => 'MyString',
                        Field    => 'MyString',
                      },                                              # OPTIONAL
                      Concat => [ <FormInputValueProperty>, ... ],    # OPTIONAL
                      Value  => 'MyString',
                    },
                  },
                  ...
                ],
                BindingProperties => {
                  'MyString' => {
                    BindingProperties => { Model => 'MyString', },    # OPTIONAL
                    Type              => 'MyString',
                  },
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Label    => 'MyString',
            Position => {
              Below   => 'MyString',
              Fixed   => 'first',      # values: first; OPTIONAL
              RightOf => 'MyString',
            },    # OPTIONAL
            Validations => [
              {
                Type      => 'MyString',
                NumValues => [
                  1, ...    # OPTIONAL
                ],    # OPTIONAL
                StrValues         => [ 'MyString', ... ],
                ValidationMessage => 'MyString',
              },
              ...
            ],    # OPTIONAL
          },
        },
        FormActionType    => 'create',        # values: create, update
        Name              => 'MyFormName',    # min: 1, max: 255
        SchemaVersion     => 'MyString',
        SectionalElements => {
          'MyString' => {
            Type        => 'MyString',
            Excluded    => 1,            # OPTIONAL
            Level       => 1,            # OPTIONAL
            Orientation => 'MyString',
            Position    => {
              Below   => 'MyString',
              Fixed   => 'first',        # values: first; OPTIONAL
              RightOf => 'MyString',
            },    # OPTIONAL
            Text => 'MyString',
          },
        },
        Style => {
          HorizontalGap => {
            TokenReference => 'MyString',
            Value          => 'MyString',
          },    # OPTIONAL
          OuterPadding => {
            TokenReference => 'MyString',
            Value          => 'MyString',
          },    # OPTIONAL
          VerticalGap => {
            TokenReference => 'MyString',
            Value          => 'MyString',
          },    # OPTIONAL
        },
        Cta => {
          Cancel => {
            Children => 'MyString',
            Excluded => 1,            # OPTIONAL
            Position => {
              Below   => 'MyString',
              Fixed   => 'first',      # values: first; OPTIONAL
              RightOf => 'MyString',
            },    # OPTIONAL
          },    # OPTIONAL
          Clear => {
            Children => 'MyString',
            Excluded => 1,            # OPTIONAL
            Position => {
              Below   => 'MyString',
              Fixed   => 'first',      # values: first; OPTIONAL
              RightOf => 'MyString',
            },    # OPTIONAL
          },    # OPTIONAL
          Position => 'top',    # values: top, bottom, top_and_bottom; OPTIONAL
          Submit   => {
            Children => 'MyString',
            Excluded => 1,            # OPTIONAL
            Position => {
              Below   => 'MyString',
              Fixed   => 'first',      # values: first; OPTIONAL
              RightOf => 'MyString',
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        LabelDecorator =>
          'required',    # values: required, optional, none; OPTIONAL
        Tags => {
          'MyTagKey' =>
            'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
        },    # OPTIONAL
      },
      ClientToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $CreateFormResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::CreateFormResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/CreateForm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app to associate with the form.



=head2 ClientToken => Str

The unique client token.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.



=head2 B<REQUIRED> FormToCreate => L<Paws::AmplifyUIBuilder::CreateFormData>

Represents the configuration of the form to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateForm in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

