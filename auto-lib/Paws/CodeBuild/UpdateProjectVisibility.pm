
package Paws::CodeBuild::UpdateProjectVisibility;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has ProjectVisibility => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectVisibility' , required => 1);
  has ResourceAccessRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceAccessRole' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProjectVisibility');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateProjectVisibilityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateProjectVisibility - Arguments for method UpdateProjectVisibility on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProjectVisibility on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method UpdateProjectVisibility.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProjectVisibility.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $UpdateProjectVisibilityOutput = $codebuild->UpdateProjectVisibility(
      ProjectArn         => 'MyNonEmptyString',
      ProjectVisibility  => 'PUBLIC_READ',
      ResourceAccessRole => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $ProjectArn         = $UpdateProjectVisibilityOutput->ProjectArn;
    my $ProjectVisibility  = $UpdateProjectVisibilityOutput->ProjectVisibility;
    my $PublicProjectAlias = $UpdateProjectVisibilityOutput->PublicProjectAlias;

    # Returns a L<Paws::CodeBuild::UpdateProjectVisibilityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/UpdateProjectVisibility>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the build project.



=head2 B<REQUIRED> ProjectVisibility => Str



Valid values are: C<"PUBLIC_READ">, C<"PRIVATE">

=head2 ResourceAccessRole => Str

The ARN of the IAM role that enables CodeBuild to access the CloudWatch
Logs and Amazon S3 artifacts for the project's builds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProjectVisibility in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

