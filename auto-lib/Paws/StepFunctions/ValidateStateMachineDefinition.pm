
package Paws::StepFunctions::ValidateStateMachineDefinition;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has Severity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'severity' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateStateMachineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::ValidateStateMachineDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ValidateStateMachineDefinition - Arguments for method ValidateStateMachineDefinition on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateStateMachineDefinition on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method ValidateStateMachineDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateStateMachineDefinition.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $ValidateStateMachineDefinitionOutput =
      $states->ValidateStateMachineDefinition(
      Definition => 'MyDefinition',
      MaxResults => 1,                # OPTIONAL
      Severity   => 'ERROR',          # OPTIONAL
      Type       => 'STANDARD',       # OPTIONAL
      );

    # Results:
    my $Diagnostics = $ValidateStateMachineDefinitionOutput->Diagnostics;
    my $Result      = $ValidateStateMachineDefinitionOutput->Result;
    my $Truncated   = $ValidateStateMachineDefinitionOutput->Truncated;

# Returns a L<Paws::StepFunctions::ValidateStateMachineDefinitionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. For more
information, see Amazon States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
(ASL).



=head2 MaxResults => Int

The maximum number of diagnostics that are returned per call. The
default and maximum value is 100. Setting the value to 0 will also use
the default of 100.

If the number of diagnostics returned in the response exceeds
C<maxResults>, the value of the C<truncated> field in the response will
be set to C<true>.



=head2 Severity => Str

Minimum level of diagnostics to return. C<ERROR> returns only C<ERROR>
diagnostics, whereas C<WARNING> returns both C<WARNING> and C<ERROR>
diagnostics. The default is C<ERROR>.

Valid values are: C<"ERROR">, C<"WARNING">

=head2 Type => Str

The target type of state machine for this definition. The default is
C<STANDARD>.

Valid values are: C<"STANDARD">, C<"EXPRESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateStateMachineDefinition in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

