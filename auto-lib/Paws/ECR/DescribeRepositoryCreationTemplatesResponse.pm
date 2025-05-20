
package Paws::ECR::DescribeRepositoryCreationTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryCreationTemplates => (is => 'ro', isa => 'ArrayRef[Paws::ECR::RepositoryCreationTemplate]', traits => ['NameInRequest'], request_name => 'repositoryCreationTemplates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRepositoryCreationTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribeRepositoryCreationTemplates> request. When the results of a
C<DescribeRepositoryCreationTemplates> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryCreationTemplates => ArrayRef[L<Paws::ECR::RepositoryCreationTemplate>]

The details of the repository creation templates.


=head2 _request_id => Str


=cut

1;