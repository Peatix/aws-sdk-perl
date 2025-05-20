
package Paws::QBusiness::CreateRetriever;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::RetrieverConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRetriever');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/retrievers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateRetrieverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateRetriever - Arguments for method CreateRetriever on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRetriever on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateRetriever.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRetriever.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateRetrieverResponse = $qbusiness->CreateRetriever(
      ApplicationId => 'MyApplicationId',
      Configuration => {
        KendraIndexConfiguration => {
          IndexId => 'MyKendraIndexId',    # min: 36, max: 36

        },    # OPTIONAL
        NativeIndexConfiguration => {
          IndexId          => 'MyIndexId',    # min: 36, max: 36
          BoostingOverride => {
            'MyDocumentAttributeKey' => {
              DateConfiguration => {
                BoostingLevel =>
                  'NONE',    # values: NONE, LOW, MEDIUM, HIGH, VERY_HIGH
                BoostingDurationInSeconds => 1,    # max: 999999999; OPTIONAL
              },    # OPTIONAL
              NumberConfiguration => {
                BoostingLevel =>
                  'NONE',    # values: NONE, LOW, MEDIUM, HIGH, VERY_HIGH
                BoostingType => 'PRIORITIZE_LARGER_VALUES'
                , # values: PRIORITIZE_LARGER_VALUES, PRIORITIZE_SMALLER_VALUES; OPTIONAL
              },    # OPTIONAL
              StringConfiguration => {
                BoostingLevel =>
                  'NONE',    # values: NONE, LOW, MEDIUM, HIGH, VERY_HIGH
                AttributeValueBoosting => {
                  'MyString' => 'LOW'
                  , # key: min: 1, max: 2048, value: values: LOW, MEDIUM, HIGH, VERY_HIGH
                },    # min: 1, max: 10; OPTIONAL
              },    # OPTIONAL
              StringListConfiguration => {
                BoostingLevel =>
                  'NONE',    # values: NONE, LOW, MEDIUM, HIGH, VERY_HIGH

              },    # OPTIONAL
            },    # key: min: 1, max: 200
          },    # min: 1; OPTIONAL
        },    # OPTIONAL
      },
      DisplayName => 'MyRetrieverName',
      Type        => 'NATIVE_INDEX',
      ClientToken => 'MyClientToken',     # OPTIONAL
      RoleArn     => 'MyRoleArn',         # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RetrieverArn = $CreateRetrieverResponse->RetrieverArn;
    my $RetrieverId  = $CreateRetrieverResponse->RetrieverId;

    # Returns a L<Paws::QBusiness::CreateRetrieverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateRetriever>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of your Amazon Q Business application.



=head2 ClientToken => Str

A token that you provide to identify the request to create your Amazon
Q Business application retriever.



=head2 B<REQUIRED> Configuration => L<Paws::QBusiness::RetrieverConfiguration>





=head2 B<REQUIRED> DisplayName => Str

The name of your retriever.



=head2 RoleArn => Str

The ARN of an IAM role used by Amazon Q Business to access the basic
authentication credentials stored in a Secrets Manager secret.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize the retriever.
You can also use tags to help control access to the retriever. Tag keys
and values can consist of Unicode letters, digits, white space, and any
of the following symbols: _ . : / = + - @.



=head2 B<REQUIRED> Type => Str

The type of retriever you are using.

Valid values are: C<"NATIVE_INDEX">, C<"KENDRA_INDEX">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRetriever in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

