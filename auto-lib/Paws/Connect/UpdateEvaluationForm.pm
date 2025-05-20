
package Paws::Connect::UpdateEvaluationForm;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreateNewVersion => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has EvaluationFormId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EvaluationFormId', required => 1);
  has EvaluationFormVersion => (is => 'ro', isa => 'Int', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EvaluationFormItem]', required => 1);
  has ScoringStrategy => (is => 'ro', isa => 'Paws::Connect::EvaluationFormScoringStrategy');
  has Title => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEvaluationForm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-forms/{InstanceId}/{EvaluationFormId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateEvaluationFormResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateEvaluationForm - Arguments for method UpdateEvaluationForm on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEvaluationForm on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateEvaluationForm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEvaluationForm.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateEvaluationFormResponse = $connect->UpdateEvaluationForm(
      EvaluationFormId      => 'MyResourceId',
      EvaluationFormVersion => 1,
      InstanceId            => 'MyInstanceId',
      Items                 => [
        {
          Question => {
            QuestionType => 'TEXT',    # values: TEXT, SINGLESELECT, NUMERIC
            RefId        => 'MyReferenceId',                   # min: 1, max: 40
            Title        => 'MyEvaluationFormQuestionTitle',   # max: 350
            Instructions =>
              'MyEvaluationFormQuestionInstructions',    # max: 1024; OPTIONAL
            NotApplicableEnabled   => 1,                 # OPTIONAL
            QuestionTypeProperties => {
              Numeric => {
                MaxValue   => 1,
                MinValue   => 1,
                Automation => {
                  PropertyValue => {
                    Label => 'OVERALL_CUSTOMER_SENTIMENT_SCORE'
                    , # values: OVERALL_CUSTOMER_SENTIMENT_SCORE, OVERALL_AGENT_SENTIMENT_SCORE, NON_TALK_TIME, NON_TALK_TIME_PERCENTAGE, NUMBER_OF_INTERRUPTIONS, CONTACT_DURATION, AGENT_INTERACTION_DURATION, CUSTOMER_HOLD_TIME

                  },    # OPTIONAL
                },    # OPTIONAL
                Options => [
                  {
                    MaxValue      => 1,
                    MinValue      => 1,
                    AutomaticFail => 1,    # OPTIONAL
                    Score         => 1,    # max: 10; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 10; OPTIONAL
              },    # OPTIONAL
              SingleSelect => {
                Options => [
                  {
                    RefId => 'MyReferenceId',    # min: 1, max: 40
                    Text  => 'MyEvaluationFormSingleSelectQuestionOptionText'
                    ,                            # max: 128
                    AutomaticFail => 1,          # OPTIONAL
                    Score         => 1,          # max: 10; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 256
                Automation => {
                  Options => [
                    {
                      RuleCategory => {
                        Category =>
                          'MySingleSelectQuestionRuleCategoryAutomationLabel'
                        ,                                  # min: 1, max: 50
                        Condition   => 'PRESENT', # values: PRESENT, NOT_PRESENT
                        OptionRefId => 'MyReferenceId',    # min: 1, max: 40

                      },    # OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 20
                  DefaultOptionRefId => 'MyReferenceId',    # min: 1, max: 40
                },    # OPTIONAL
                DisplayAs => 'DROPDOWN',    # values: DROPDOWN, RADIO; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Weight => 1,    # max: 100; OPTIONAL
          },    # OPTIONAL
          Section => {
            Items        => <EvaluationFormItemsList>,
            RefId        => 'MyReferenceId',                   # min: 1, max: 40
            Title        => 'MyEvaluationFormSectionTitle',    # max: 128
            Instructions =>
              'MyEvaluationFormQuestionInstructions',    # max: 1024; OPTIONAL
            Weight => 1,                                 # max: 100; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      Title            => 'MyEvaluationFormTitle',
      ClientToken      => 'MyClientToken',                  # OPTIONAL
      CreateNewVersion => 1,                                # OPTIONAL
      Description      => 'MyEvaluationFormDescription',    # OPTIONAL
      ScoringStrategy  => {
        Mode   => 'QUESTION_ONLY',    # values: QUESTION_ONLY, SECTION_ONLY
        Status => 'ENABLED',          # values: ENABLED, DISABLED

      },    # OPTIONAL
    );

    # Results:
    my $EvaluationFormArn = $UpdateEvaluationFormResponse->EvaluationFormArn;
    my $EvaluationFormId  = $UpdateEvaluationFormResponse->EvaluationFormId;
    my $EvaluationFormVersion =
      $UpdateEvaluationFormResponse->EvaluationFormVersion;

    # Returns a L<Paws::Connect::UpdateEvaluationFormResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateEvaluationForm>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 CreateNewVersion => Bool

A flag indicating whether the operation must create a new version.



=head2 Description => Str

The description of the evaluation form.



=head2 B<REQUIRED> EvaluationFormId => Str

The unique identifier for the evaluation form.



=head2 B<REQUIRED> EvaluationFormVersion => Int

A version of the evaluation form to update.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::Connect::EvaluationFormItem>]

Items that are part of the evaluation form. The total number of
sections and questions must not exceed 100 each. Questions must be
contained in a section.



=head2 ScoringStrategy => L<Paws::Connect::EvaluationFormScoringStrategy>

A scoring strategy of the evaluation form.



=head2 B<REQUIRED> Title => Str

A title of the evaluation form.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEvaluationForm in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

