
package Paws::ECR::DeleteRepositoryCreationTemplateResponse;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryCreationTemplate => (is => 'ro', isa => 'Paws::ECR::RepositoryCreationTemplate', traits => ['NameInRequest'], request_name => 'repositoryCreationTemplate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRepositoryCreationTemplateResponse

=head1 ATTRIBUTES


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryCreationTemplate => L<Paws::ECR::RepositoryCreationTemplate>

The details of the repository creation template that was deleted.


=head2 _request_id => Str


=cut

1;