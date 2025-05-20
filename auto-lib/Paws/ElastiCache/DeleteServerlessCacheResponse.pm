
package Paws::ElastiCache::DeleteServerlessCacheResponse;
  use Moose;
  has ServerlessCache => (is => 'ro', isa => 'Paws::ElastiCache::ServerlessCache');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteServerlessCacheResponse

=head1 ATTRIBUTES


=head2 ServerlessCache => L<Paws::ElastiCache::ServerlessCache>

Provides the details of the specified serverless cache that is about to
be deleted.


=head2 _request_id => Str


=cut

