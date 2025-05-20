
package Paws::B2bi::TestParsingResponse;
  use Moose;
  has ParsedFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parsedFileContent' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::TestParsingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParsedFileContent => Str

Returns the contents of the input file being tested, parsed according
to the specified EDI (electronic data interchange) type.


=head2 _request_id => Str


=cut

1;