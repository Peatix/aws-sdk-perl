
package Paws::MemoryDB::TagResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::TagResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags as key-value pairs.


=head2 _request_id => Str


=cut

1;