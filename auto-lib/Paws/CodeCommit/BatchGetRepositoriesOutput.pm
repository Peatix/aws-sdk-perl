
package Paws::CodeCommit::BatchGetRepositoriesOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::BatchGetRepositoriesError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryMetadata]', traits => ['NameInRequest'], request_name => 'repositories' );
  has RepositoriesNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'repositoriesNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetRepositoriesOutput

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::CodeCommit::BatchGetRepositoriesError>]

Returns information about any errors returned when attempting to
retrieve information about the repositories.


=head2 Repositories => ArrayRef[L<Paws::CodeCommit::RepositoryMetadata>]

A list of repositories returned by the batch get repositories
operation.


=head2 RepositoriesNotFound => ArrayRef[Str|Undef]

Returns a list of repository names for which information could not be
found.


=head2 _request_id => Str


=cut

1;