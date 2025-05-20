
package Paws::KinesisVideoArchivedMedia::GetImagesOutput;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideoArchivedMedia::Image]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetImagesOutput

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::KinesisVideoArchivedMedia::Image>]

The list of images generated from the video stream. If there is no
media available for the given timestamp, the C<NO_MEDIA> error will be
listed in the output. If an error occurs while the image is being
generated, the C<MEDIA_ERROR> will be listed in the output as the cause
of the missing image.


=head2 NextToken => Str

The encrypted token that was used in the request to get more images.


=head2 _request_id => Str


=cut

