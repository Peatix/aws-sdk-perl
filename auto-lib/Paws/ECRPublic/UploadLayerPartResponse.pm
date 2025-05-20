
package Paws::ECRPublic::UploadLayerPartResponse;
  use Moose;
  has LastByteReceived => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastByteReceived' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::UploadLayerPartResponse

=head1 ATTRIBUTES


=head2 LastByteReceived => Int

The integer value of the last byte that's received in the request.


=head2 RegistryId => Str

The registry ID that's associated with the request.


=head2 RepositoryName => Str

The repository name that's associated with the request.


=head2 UploadId => Str

The upload ID that's associated with the request.


=head2 _request_id => Str


=cut

1;