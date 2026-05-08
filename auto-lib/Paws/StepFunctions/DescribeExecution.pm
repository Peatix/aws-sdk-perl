
package Paws::StepFunctions::DescribeExecution;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has IncludedData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'includedData' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecution - Arguments for method DescribeExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeExecutionOutput = $states->DescribeExecution(
      ExecutionArn => 'MyArn',
      IncludedData => 'ALL_DATA',    # OPTIONAL
    );

    # Results:
    my $Cause                = $DescribeExecutionOutput->Cause;
    my $Error                = $DescribeExecutionOutput->Error;
    my $ExecutionArn         = $DescribeExecutionOutput->ExecutionArn;
    my $Input                = $DescribeExecutionOutput->Input;
    my $InputDetails         = $DescribeExecutionOutput->InputDetails;
    my $MapRunArn            = $DescribeExecutionOutput->MapRunArn;
    my $Name                 = $DescribeExecutionOutput->Name;
    my $Output               = $DescribeExecutionOutput->Output;
    my $OutputDetails        = $DescribeExecutionOutput->OutputDetails;
    my $RedriveCount         = $DescribeExecutionOutput->RedriveCount;
    my $RedriveDate          = $DescribeExecutionOutput->RedriveDate;
    my $RedriveStatus        = $DescribeExecutionOutput->RedriveStatus;
    my $RedriveStatusReason  = $DescribeExecutionOutput->RedriveStatusReason;
    my $StartDate            = $DescribeExecutionOutput->StartDate;
    my $StateMachineAliasArn = $DescribeExecutionOutput->StateMachineAliasArn;
    my $StateMachineArn      = $DescribeExecutionOutput->StateMachineArn;
    my $StateMachineVersionArn =
      $DescribeExecutionOutput->StateMachineVersionArn;
    my $Status      = $DescribeExecutionOutput->Status;
    my $StopDate    = $DescribeExecutionOutput->StopDate;
    my $TraceHeader = $DescribeExecutionOutput->TraceHeader;

    # Returns a L<Paws::StepFunctions::DescribeExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) of the execution to describe.



=head2 IncludedData => Str

If your state machine definition is encrypted with a KMS key, callers
must have C<kms:Decrypt> permission to decrypt the definition.
Alternatively, you can call DescribeStateMachine API with
C<includedData = METADATA_ONLY> to get a successful response without
the encrypted definition.

Valid values are: C<"ALL_DATA">, C<"METADATA_ONLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

