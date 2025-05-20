
package Paws::ElastiCache::CreateServerlessCacheResponse;
  use Moose;
  has ServerlessCache => (is => 'ro', isa => 'Paws::ElastiCache::ServerlessCache');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateServerlessCacheResponse

=head1 ATTRIBUTES


=head2 ServerlessCache => L<Paws::ElastiCache::ServerlessCache>

The response for the attempt to create the serverless cache.


=head2 _request_id => Str


=cut

