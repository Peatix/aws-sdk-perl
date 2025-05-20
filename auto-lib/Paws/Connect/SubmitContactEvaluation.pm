
package Paws::Connect::SubmitContactEvaluation;
  use Moose;
  has Answers => (is => 'ro', isa => 'Paws::Connect::EvaluationAnswersInputMap');
  has EvaluationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EvaluationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Notes => (is => 'ro', isa => 'Paws::Connect::EvaluationNotesMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitContactEvaluation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-evaluations/{InstanceId}/{EvaluationId}/submit');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SubmitContactEvaluationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SubmitContactEvaluation - Arguments for method SubmitContactEvaluation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitContactEvaluation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SubmitContactEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitContactEvaluation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SubmitContactEvaluationResponse = $connect->SubmitContactEvaluation(
      EvaluationId => 'MyResourceId',
      InstanceId   => 'MyInstanceId',
      Answers      => {
        'MyResourceId' => {
          Value => {
            NotApplicable => 1,                       # OPTIONAL
            NumericValue  => 1,                       # OPTIONAL
            StringValue   =>
              'MyEvaluationAnswerDataStringValue',    # max: 128; OPTIONAL
          },    # OPTIONAL
        },    # key: min: 1, max: 500
      },    # OPTIONAL
      Notes => {
        'MyResourceId' => {
          Value => 'MyEvaluationNoteString',    # max: 3072; OPTIONAL
        },    # key: min: 1, max: 500
      },    # OPTIONAL
    );

    # Results:
    my $EvaluationArn = $SubmitContactEvaluationResponse->EvaluationArn;
    my $EvaluationId  = $SubmitContactEvaluationResponse->EvaluationId;

    # Returns a L<Paws::Connect::SubmitContactEvaluationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SubmitContactEvaluation>

=head1 ATTRIBUTES


=head2 Answers => L<Paws::Connect::EvaluationAnswersInputMap>

A map of question identifiers to answer value.



=head2 B<REQUIRED> EvaluationId => Str

A unique identifier for the contact evaluation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Notes => L<Paws::Connect::EvaluationNotesMap>

A map of question identifiers to note value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitContactEvaluation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

