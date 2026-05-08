
package Paws::StepFunctions::RedriveExecution;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RedriveExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::RedriveExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::RedriveExecution - Arguments for method RedriveExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RedriveExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method RedriveExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RedriveExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $RedriveExecutionOutput = $states->RedriveExecution(
      ExecutionArn => 'MyArn',
      ClientToken  => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $RedriveDate = $RedriveExecutionOutput->RedriveDate;

    # Returns a L<Paws::StepFunctions::RedriveExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you donE<rsquo>t specify a client token,
the Amazon Web Services SDK automatically generates a client token and
uses it for the request to ensure idempotency. The API will return
idempotent responses for the last 10 client tokens used to successfully
redrive the execution. These client tokens are valid for up to 15
minutes after they are first used.



=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) of the execution to be redriven.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RedriveExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

