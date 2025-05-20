
package Paws::B2bi::TestConversionResponse;
  use Moose;
  has ConvertedFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'convertedFileContent' , required => 1);
  has ValidationMessages => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'validationMessages' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::TestConversionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConvertedFileContent => Str

Returns the converted file content.


=head2 ValidationMessages => ArrayRef[Str|Undef]

Returns an array of strings, each containing a message that Amazon Web
Services B2B Data Interchange generates during the conversion.


=head2 _request_id => Str


=cut

1;