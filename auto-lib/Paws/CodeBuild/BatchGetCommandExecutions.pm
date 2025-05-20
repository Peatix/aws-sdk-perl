
package Paws::CodeBuild::BatchGetCommandExecutions;
  use Moose;
  has CommandExecutionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'commandExecutionIds' , required => 1);
  has SandboxId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sandboxId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetCommandExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::BatchGetCommandExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetCommandExecutions - Arguments for method BatchGetCommandExecutions on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCommandExecutions on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method BatchGetCommandExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCommandExecutions.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $BatchGetCommandExecutionsOutput = $codebuild->BatchGetCommandExecutions(
      CommandExecutionIds => [
        'MyNonEmptyString', ...    # min: 1
      ],
      SandboxId => 'MyNonEmptyString',

    );

    # Results:
    my $CommandExecutions = $BatchGetCommandExecutionsOutput->CommandExecutions;
    my $CommandExecutionsNotFound =
      $BatchGetCommandExecutionsOutput->CommandExecutionsNotFound;

    # Returns a L<Paws::CodeBuild::BatchGetCommandExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/BatchGetCommandExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandExecutionIds => ArrayRef[Str|Undef]

A comma separated list of C<commandExecutionIds>.



=head2 B<REQUIRED> SandboxId => Str

A C<sandboxId> or C<sandboxArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCommandExecutions in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

