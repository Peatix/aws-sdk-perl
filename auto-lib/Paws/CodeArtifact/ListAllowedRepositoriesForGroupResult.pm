
package Paws::CodeArtifact::ListAllowedRepositoriesForGroupResult;
  use Moose;
  has AllowedRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedRepositories');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListAllowedRepositoriesForGroupResult

=head1 ATTRIBUTES


=head2 AllowedRepositories => ArrayRef[Str|Undef]

The list of allowed repositories for the package group and origin
configuration restriction type.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

