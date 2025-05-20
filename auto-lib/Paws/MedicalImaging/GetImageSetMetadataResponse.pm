
package Paws::MedicalImaging::GetImageSetMetadataResponse;
  use Moose;
  has ContentEncoding => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Encoding');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ImageSetMetadataBlob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetMetadataBlob', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImageSetMetadataBlob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetImageSetMetadataResponse

=head1 ATTRIBUTES


=head2 ContentEncoding => Str

The compression format in which image set metadata attributes are
returned.


=head2 ContentType => Str

The format in which the study metadata is returned to the customer.
Default is C<text/plain>.


=head2 B<REQUIRED> ImageSetMetadataBlob => Str

The blob containing the aggregated metadata information for the image
set.


=head2 _request_id => Str


=cut

