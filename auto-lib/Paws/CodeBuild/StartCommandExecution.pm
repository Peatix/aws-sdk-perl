
package Paws::CodeBuild::StartCommandExecution;
  use Moose;
  has Command => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'command' , required => 1);
  has SandboxId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sandboxId' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCommandExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartCommandExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartCommandExecution - Arguments for method StartCommandExecution on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCommandExecution on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StartCommandExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCommandExecution.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StartCommandExecutionOutput = $codebuild->StartCommandExecution(
      Command   => 'MySensitiveNonEmptyString',
      SandboxId => 'MyNonEmptyString',
      Type      => 'SHELL',                       # OPTIONAL
    );

    # Results:
    my $CommandExecution = $StartCommandExecutionOutput->CommandExecution;

    # Returns a L<Paws::CodeBuild::StartCommandExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StartCommandExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Command => Str

The command that needs to be executed.



=head2 B<REQUIRED> SandboxId => Str

A C<sandboxId> or C<sandboxArn>.



=head2 Type => Str

The command type.

Valid values are: C<"SHELL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCommandExecution in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

