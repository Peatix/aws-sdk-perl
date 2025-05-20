
package Paws::AmplifyUIBuilder::UpdateForm;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has UpdatedForm => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::UpdateFormData', traits => ['NameInRequest'], request_name => 'updatedForm', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdatedForm');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateForm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/forms/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::UpdateFormResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::UpdateForm - Arguments for method UpdateForm on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateForm on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method UpdateForm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateForm.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $UpdateFormResponse = $amplifyuibuilder->UpdateForm(
      AppId           => 'MyString',
      EnvironmentName => 'MyString',
      Id              => 'MyUuid',
      UpdatedForm     => {
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
        DataType => {
          DataSourceType => 'DataStore',    # values: DataStore, Custom
          DataTypeName   => 'MyString',

        },    # OPTIONAL
        Fields => {
          'MyString' => {
            Excluded  => 1,    # OPTIONAL
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
        },    # OPTIONAL
        FormActionType => 'create',    # values: create, update; OPTIONAL
        LabelDecorator =>
          'required',    # values: required, optional, none; OPTIONAL
        Name              => 'MyFormName',    # min: 1, max: 255; OPTIONAL
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
        },    # OPTIONAL
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
        },    # OPTIONAL
      },
      ClientToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $UpdateFormResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::UpdateFormResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/UpdateForm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for the Amplify app.



=head2 ClientToken => Str

The unique client token.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is part of the Amplify app.



=head2 B<REQUIRED> Id => Str

The unique ID for the form.



=head2 B<REQUIRED> UpdatedForm => L<Paws::AmplifyUIBuilder::UpdateFormData>

The request accepts the following data in JSON format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateForm in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

