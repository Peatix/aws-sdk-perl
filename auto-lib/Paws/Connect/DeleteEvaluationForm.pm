
package Paws::Connect::DeleteEvaluationForm;
  use Moose;
  has EvaluationFormId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EvaluationFormId', required => 1);
  has EvaluationFormVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEvaluationForm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-forms/{InstanceId}/{EvaluationFormId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeleteEvaluationForm - Arguments for method DeleteEvaluationForm on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEvaluationForm on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeleteEvaluationForm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEvaluationForm.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DeleteEvaluationForm(
      EvaluationFormId      => 'MyResourceId',
      InstanceId            => 'MyInstanceId',
      EvaluationFormVersion => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeleteEvaluationForm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationFormId => Str

The unique identifier for the evaluation form.



=head2 EvaluationFormVersion => Int

The unique identifier for the evaluation form.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEvaluationForm in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

