
package Paws::QBusiness::GetMediaResponse;
  use Moose;
  has MediaBytes => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaBytes');
  has MediaMimeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaMimeType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetMediaResponse

=head1 ATTRIBUTES


=head2 MediaBytes => Str

The base64-encoded bytes of the media object.


=head2 MediaMimeType => Str

The MIME type of the media object (image/png).


=head2 _request_id => Str


=cut

