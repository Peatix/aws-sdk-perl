
package Paws::ECR::DescribeImageReplicationStatusResponse;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Paws::ECR::ImageIdentifier', traits => ['NameInRequest'], request_name => 'imageId' );
  has ReplicationStatuses => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageReplicationStatus]', traits => ['NameInRequest'], request_name => 'replicationStatuses' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImageReplicationStatusResponse

=head1 ATTRIBUTES


=head2 ImageId => L<Paws::ECR::ImageIdentifier>




=head2 ReplicationStatuses => ArrayRef[L<Paws::ECR::ImageReplicationStatus>]

The replication status details for the images in the specified
repository.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;