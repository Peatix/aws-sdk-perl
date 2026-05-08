
package Paws::StepFunctions::DescribeStateMachine;
  use Moose;
  has IncludedData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'includedData' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStateMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeStateMachineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachine - Arguments for method DescribeStateMachine on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStateMachine on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeStateMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStateMachine.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeStateMachineOutput = $states->DescribeStateMachine(
      StateMachineArn => 'MyArn',
      IncludedData    => 'ALL_DATA',    # OPTIONAL
    );

    # Results:
    my $CreationDate = $DescribeStateMachineOutput->CreationDate;
    my $Definition   = $DescribeStateMachineOutput->Definition;
    my $Description  = $DescribeStateMachineOutput->Description;
    my $EncryptionConfiguration =
      $DescribeStateMachineOutput->EncryptionConfiguration;
    my $Label = $DescribeStateMachineOutput->Label;
    my $LoggingConfiguration =
      $DescribeStateMachineOutput->LoggingConfiguration;
    my $Name            = $DescribeStateMachineOutput->Name;
    my $RevisionId      = $DescribeStateMachineOutput->RevisionId;
    my $RoleArn         = $DescribeStateMachineOutput->RoleArn;
    my $StateMachineArn = $DescribeStateMachineOutput->StateMachineArn;
    my $Status          = $DescribeStateMachineOutput->Status;
    my $TracingConfiguration =
      $DescribeStateMachineOutput->TracingConfiguration;
    my $Type               = $DescribeStateMachineOutput->Type;
    my $VariableReferences = $DescribeStateMachineOutput->VariableReferences;

    # Returns a L<Paws::StepFunctions::DescribeStateMachineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 IncludedData => Str

If your state machine definition is encrypted with a KMS key, callers
must have C<kms:Decrypt> permission to decrypt the definition.
Alternatively, you can call the API with C<includedData =
METADATA_ONLY> to get a successful response without the encrypted
definition.

When calling a labelled ARN for an encrypted state machine, the
C<includedData = METADATA_ONLY> parameter will not apply because Step
Functions needs to decrypt the entire state machine definition to get
the Distributed Map stateE<rsquo>s definition. In this case, the API
caller needs to have C<kms:Decrypt> permission.

Valid values are: C<"ALL_DATA">, C<"METADATA_ONLY">

=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine for which you want
the information.

If you specify a state machine version ARN, this API returns details
about that version. The version ARN is a combination of state machine
ARN and the version number separated by a colon (:). For example,
C<stateMachineARN:1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

