
package Paws::Athena::StartCalculationExecution;
  use Moose;
  has CalculationConfiguration => (is => 'ro', isa => 'Paws::Athena::CalculationConfiguration');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CodeBlock => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCalculationExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::StartCalculationExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartCalculationExecution - Arguments for method StartCalculationExecution on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCalculationExecution on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method StartCalculationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCalculationExecution.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $StartCalculationExecutionResponse = $athena->StartCalculationExecution(
      SessionId                => 'MySessionId',
      CalculationConfiguration => {
        CodeBlock => 'MyCodeBlock',    # max: 68000; OPTIONAL
      },    # OPTIONAL
      ClientRequestToken => 'MyIdempotencyToken',     # OPTIONAL
      CodeBlock          => 'MyCodeBlock',            # OPTIONAL
      Description        => 'MyDescriptionString',    # OPTIONAL
    );

    # Results:
    my $CalculationExecutionId =
      $StartCalculationExecutionResponse->CalculationExecutionId;
    my $State = $StartCalculationExecutionResponse->State;

    # Returns a L<Paws::Athena::StartCalculationExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/StartCalculationExecution>

=head1 ATTRIBUTES


=head2 CalculationConfiguration => L<Paws::Athena::CalculationConfiguration>

Contains configuration information for the calculation.



=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
calculation is idempotent (executes only once). If another
C<StartCalculationExecutionRequest> is received, the same response is
returned and another calculation is not created. If a parameter has
changed, an error is returned.

This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for users. If you are not using the Amazon Web Services SDK or
the Amazon Web Services CLI, you must provide this token or the action
will fail.



=head2 CodeBlock => Str

A string that contains the code of the calculation. Use this parameter
instead of CalculationConfiguration$CodeBlock, which is deprecated.



=head2 Description => Str

A description of the calculation.



=head2 B<REQUIRED> SessionId => Str

The session ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCalculationExecution in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

