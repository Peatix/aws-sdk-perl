
package Paws::FSX::CreateFileCacheResponse;
  use Moose;
  has FileCache => (is => 'ro', isa => 'Paws::FSX::FileCacheCreating');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileCacheResponse

=head1 ATTRIBUTES


=head2 FileCache => L<Paws::FSX::FileCacheCreating>

A description of the cache that was created.


=head2 _request_id => Str


=cut

1;