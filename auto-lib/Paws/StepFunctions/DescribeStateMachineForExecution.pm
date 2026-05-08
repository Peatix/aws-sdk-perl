
package Paws::StepFunctions::DescribeStateMachineForExecution;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has IncludedData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'includedData' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStateMachineForExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeStateMachineForExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineForExecution - Arguments for method DescribeStateMachineForExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStateMachineForExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeStateMachineForExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStateMachineForExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeStateMachineForExecutionOutput =
      $states->DescribeStateMachineForExecution(
      ExecutionArn => 'MyArn',
      IncludedData => 'ALL_DATA',    # OPTIONAL
      );

    # Results:
    my $Definition = $DescribeStateMachineForExecutionOutput->Definition;
    my $EncryptionConfiguration =
      $DescribeStateMachineForExecutionOutput->EncryptionConfiguration;
    my $Label = $DescribeStateMachineForExecutionOutput->Label;
    my $LoggingConfiguration =
      $DescribeStateMachineForExecutionOutput->LoggingConfiguration;
    my $MapRunArn  = $DescribeStateMachineForExecutionOutput->MapRunArn;
    my $Name       = $DescribeStateMachineForExecutionOutput->Name;
    my $RevisionId = $DescribeStateMachineForExecutionOutput->RevisionId;
    my $RoleArn    = $DescribeStateMachineForExecutionOutput->RoleArn;
    my $StateMachineArn =
      $DescribeStateMachineForExecutionOutput->StateMachineArn;
    my $TracingConfiguration =
      $DescribeStateMachineForExecutionOutput->TracingConfiguration;
    my $UpdateDate = $DescribeStateMachineForExecutionOutput->UpdateDate;
    my $VariableReferences =
      $DescribeStateMachineForExecutionOutput->VariableReferences;

# Returns a L<Paws::StepFunctions::DescribeStateMachineForExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) of the execution you want state machine
information for.



=head2 IncludedData => Str

If your state machine definition is encrypted with a KMS key, callers
must have C<kms:Decrypt> permission to decrypt the definition.
Alternatively, you can call the API with C<includedData =
METADATA_ONLY> to get a successful response without the encrypted
definition.

Valid values are: C<"ALL_DATA">, C<"METADATA_ONLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStateMachineForExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

