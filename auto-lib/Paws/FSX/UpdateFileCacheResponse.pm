
package Paws::FSX::UpdateFileCacheResponse;
  use Moose;
  has FileCache => (is => 'ro', isa => 'Paws::FSX::FileCache');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileCacheResponse

=head1 ATTRIBUTES


=head2 FileCache => L<Paws::FSX::FileCache>

A description of the cache that was updated.


=head2 _request_id => Str


=cut

1;