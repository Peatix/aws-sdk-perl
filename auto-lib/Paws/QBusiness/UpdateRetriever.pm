
package Paws::QBusiness::UpdateRetriever;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::RetrieverConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has RetrieverId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'retrieverId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRetriever');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/retrievers/{retrieverId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateRetrieverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateRetriever - Arguments for method UpdateRetriever on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRetriever on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateRetriever.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRetriever.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateRetrieverResponse = $qbusiness->UpdateRetriever(
      ApplicationId => 'MyApplicationId',
      RetrieverId   => 'MyRetrieverId',
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
      },    # OPTIONAL
      DisplayName => 'MyRetrieverName',    # OPTIONAL
      RoleArn     => 'MyRoleArn',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateRetriever>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of your Amazon Q Business application.



=head2 Configuration => L<Paws::QBusiness::RetrieverConfiguration>





=head2 DisplayName => Str

The name of your retriever.



=head2 B<REQUIRED> RetrieverId => Str

The identifier of your retriever.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the retriever and required resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRetriever in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

