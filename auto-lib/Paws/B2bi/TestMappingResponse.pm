
package Paws::B2bi::TestMappingResponse;
  use Moose;
  has MappedFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappedFileContent' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::TestMappingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MappedFileContent => Str

Returns a string for the mapping that can be used to identify the
mapping. Similar to a fingerprint


=head2 _request_id => Str


=cut

1;