
package Paws::CodeBuild::StartSandbox;
  use Moose;
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSandbox');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartSandboxOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartSandbox - Arguments for method StartSandbox on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSandbox on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StartSandbox.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSandbox.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StartSandboxOutput = $codebuild->StartSandbox(
      IdempotencyToken => 'MySensitiveString',    # OPTIONAL
      ProjectName      => 'MyNonEmptyString',     # OPTIONAL
    );

    # Results:
    my $Sandbox = $StartSandboxOutput->Sandbox;

    # Returns a L<Paws::CodeBuild::StartSandboxOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StartSandbox>

=head1 ATTRIBUTES


=head2 IdempotencyToken => Str

A unique client token.



=head2 ProjectName => Str

The CodeBuild project name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSandbox in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

