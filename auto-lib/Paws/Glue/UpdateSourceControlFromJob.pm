
package Paws::Glue::UpdateSourceControlFromJob;
  use Moose;
  has AuthStrategy => (is => 'ro', isa => 'Str');
  has AuthToken => (is => 'ro', isa => 'Str');
  has BranchName => (is => 'ro', isa => 'Str');
  has CommitId => (is => 'ro', isa => 'Str');
  has Folder => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has Provider => (is => 'ro', isa => 'Str');
  has RepositoryName => (is => 'ro', isa => 'Str');
  has RepositoryOwner => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSourceControlFromJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateSourceControlFromJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateSourceControlFromJob - Arguments for method UpdateSourceControlFromJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSourceControlFromJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateSourceControlFromJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSourceControlFromJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateSourceControlFromJobResponse = $glue->UpdateSourceControlFromJob(
      AuthStrategy    => 'PERSONAL_ACCESS_TOKEN',    # OPTIONAL
      AuthToken       => 'MyAuthTokenString',        # OPTIONAL
      BranchName      => 'MyNameString',             # OPTIONAL
      CommitId        => 'MyCommitIdString',         # OPTIONAL
      Folder          => 'MyNameString',             # OPTIONAL
      JobName         => 'MyNameString',             # OPTIONAL
      Provider        => 'GITHUB',                   # OPTIONAL
      RepositoryName  => 'MyNameString',             # OPTIONAL
      RepositoryOwner => 'MyNameString',             # OPTIONAL
    );

    # Results:
    my $JobName = $UpdateSourceControlFromJobResponse->JobName;

    # Returns a L<Paws::Glue::UpdateSourceControlFromJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateSourceControlFromJob>

=head1 ATTRIBUTES


=head2 AuthStrategy => Str

The type of authentication, which can be an authentication token stored
in Amazon Web Services Secrets Manager, or a personal access token.

Valid values are: C<"PERSONAL_ACCESS_TOKEN">, C<"AWS_SECRETS_MANAGER">

=head2 AuthToken => Str

The value of the authorization token.



=head2 BranchName => Str

An optional branch in the remote repository.



=head2 CommitId => Str

A commit ID for a commit in the remote repository.



=head2 Folder => Str

An optional folder in the remote repository.



=head2 JobName => Str

The name of the Glue job to be synchronized to or from the remote
repository.



=head2 Provider => Str

The provider for the remote repository. Possible values: GITHUB,
AWS_CODE_COMMIT, GITLAB, BITBUCKET.

Valid values are: C<"GITHUB">, C<"GITLAB">, C<"BITBUCKET">, C<"AWS_CODE_COMMIT">

=head2 RepositoryName => Str

The name of the remote repository that contains the job artifacts. For
BitBucket providers, C<RepositoryName> should include C<WorkspaceName>.
Use the format C<E<lt>WorkspaceNameE<gt>/E<lt>RepositoryNameE<gt>>.



=head2 RepositoryOwner => Str

The owner of the remote repository that contains the job artifacts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSourceControlFromJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

