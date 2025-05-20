
package Paws::Connect::DescribeContactEvaluation;
  use Moose;
  has EvaluationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EvaluationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContactEvaluation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-evaluations/{InstanceId}/{EvaluationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeContactEvaluationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContactEvaluation - Arguments for method DescribeContactEvaluation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContactEvaluation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeContactEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContactEvaluation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeContactEvaluationResponse = $connect->DescribeContactEvaluation(
      EvaluationId => 'MyResourceId',
      InstanceId   => 'MyInstanceId',

    );

    # Results:
    my $Evaluation     = $DescribeContactEvaluationResponse->Evaluation;
    my $EvaluationForm = $DescribeContactEvaluationResponse->EvaluationForm;

    # Returns a L<Paws::Connect::DescribeContactEvaluationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeContactEvaluation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationId => Str

A unique identifier for the contact evaluation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContactEvaluation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

