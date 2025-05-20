
package Paws::AmplifyUIBuilder::StartCodegenJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has CodegenJobToCreate => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::StartCodegenJobData', traits => ['NameInRequest'], request_name => 'codegenJobToCreate', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CodegenJobToCreate');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCodegenJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/codegen-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::StartCodegenJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::StartCodegenJob - Arguments for method StartCodegenJob on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCodegenJob on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method StartCodegenJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCodegenJob.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $StartCodegenJobResponse = $amplifyuibuilder->StartCodegenJob(
      AppId              => 'MyAppId',
      CodegenJobToCreate => {
        RenderConfig => {
          React => {
            ApiConfiguration => {
              DataStoreConfig => {

              },    # OPTIONAL
              GraphQLConfig => {
                FragmentsFilePath     => 'MyString',
                MutationsFilePath     => 'MyString',
                QueriesFilePath       => 'MyString',
                SubscriptionsFilePath => 'MyString',
                TypesFilePath         => 'MyString',

              },    # OPTIONAL
              NoApiConfig => {

              },    # OPTIONAL
            },    # OPTIONAL
            Dependencies    => { 'MyString' => 'MyString', },    # OPTIONAL
            InlineSourceMap => 1,                                # OPTIONAL
            Module          => 'es2020',    # values: es2020, esnext; OPTIONAL
            RenderTypeDeclarations => 1,        # OPTIONAL
            Script                 => 'jsx',    # values: jsx, tsx, js; OPTIONAL
            Target => 'es2015',    # values: es2015, es2020; OPTIONAL
          },    # OPTIONAL
        },
        AutoGenerateForms => 1,    # OPTIONAL
        Features          => {
          IsNonModelSupported     => 1,    # OPTIONAL
          IsRelationshipSupported => 1,    # OPTIONAL
        },    # OPTIONAL
        GenericDataSchema => {
          DataSourceType => 'DataStore',    # values: DataStore
          Enums          => {
            'MyString' => {
              Values => [ 'MyString', ... ],

            },
          },
          Models => {
            'MyString' => {
              Fields => {
                'MyString' => {
                  DataType => 'ID'
                  , # values: ID, String, Int, Float, AWSDate, AWSTime, AWSDateTime, AWSTimestamp, AWSEmail, AWSURL, AWSIPAddress, Boolean, AWSJSON, AWSPhone, Enum, Model, NonModel
                  DataTypeValue => 'MyString',
                  IsArray       => 1,            # OPTIONAL
                  ReadOnly      => 1,            # OPTIONAL
                  Required      => 1,            # OPTIONAL
                  Relationship  => {
                    RelatedModelName => 'MyString',
                    Type => 'HAS_MANY',  # values: HAS_MANY, HAS_ONE, BELONGS_TO
                    AssociatedFields => [ 'MyString', ... ],    # OPTIONAL
                    BelongsToFieldOnRelatedModel => 'MyString',
                    CanUnlinkAssociatedModel     => 1,            # OPTIONAL
                    IsHasManyIndex               => 1,            # OPTIONAL
                    RelatedJoinFieldName         => 'MyString',
                    RelatedJoinTableName         => 'MyString',
                    RelatedModelFields => [ 'MyString', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
              },
              PrimaryKeys => [ 'MyString', ... ],
              IsJoinTable => 1,                     # OPTIONAL
            },
          },
          NonModels => {
            'MyString' => {
              Fields => {
                'MyString' => {
                  DataType => 'ID'
                  , # values: ID, String, Int, Float, AWSDate, AWSTime, AWSDateTime, AWSTimestamp, AWSEmail, AWSURL, AWSIPAddress, Boolean, AWSJSON, AWSPhone, Enum, Model, NonModel
                  DataTypeValue => 'MyString',
                  IsArray       => 1,            # OPTIONAL
                  ReadOnly      => 1,            # OPTIONAL
                  Required      => 1,            # OPTIONAL
                  Relationship  => {
                    RelatedModelName => 'MyString',
                    Type => 'HAS_MANY',  # values: HAS_MANY, HAS_ONE, BELONGS_TO
                    AssociatedFields => [ 'MyString', ... ],    # OPTIONAL
                    BelongsToFieldOnRelatedModel => 'MyString',
                    CanUnlinkAssociatedModel     => 1,            # OPTIONAL
                    IsHasManyIndex               => 1,            # OPTIONAL
                    RelatedJoinFieldName         => 'MyString',
                    RelatedJoinTableName         => 'MyString',
                    RelatedModelFields => [ 'MyString', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
              },

            },
          },

        },    # OPTIONAL
        Tags => {
          'MyTagKey' =>
            'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
        },    # OPTIONAL
      },
      EnvironmentName => 'MyString',
      ClientToken     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $StartCodegenJobResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::StartCodegenJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/StartCodegenJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for the Amplify app.



=head2 ClientToken => Str

The idempotency token used to ensure that the code generation job
request completes only once.



=head2 B<REQUIRED> CodegenJobToCreate => L<Paws::AmplifyUIBuilder::StartCodegenJobData>

The code generation job resource configuration.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCodegenJob in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

