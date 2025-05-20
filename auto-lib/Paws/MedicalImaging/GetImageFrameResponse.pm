
package Paws::MedicalImaging::GetImageFrameResponse;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ImageFrameBlob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageFrameBlob', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImageFrameBlob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetImageFrameResponse

=head1 ATTRIBUTES


=head2 ContentType => Str

The format in which the image frame information is returned to the
customer. Default is C<application/octet-stream>.


=head2 B<REQUIRED> ImageFrameBlob => Str

The blob containing the aggregated image frame information.


=head2 _request_id => Str


=cut

