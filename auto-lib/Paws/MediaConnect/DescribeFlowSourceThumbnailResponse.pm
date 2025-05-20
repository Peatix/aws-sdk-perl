
package Paws::MediaConnect::DescribeFlowSourceThumbnailResponse;
  use Moose;
  has ThumbnailDetails => (is => 'ro', isa => 'Paws::MediaConnect::ThumbnailDetails', traits => ['NameInRequest'], request_name => 'thumbnailDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeFlowSourceThumbnailResponse

=head1 ATTRIBUTES


=head2 ThumbnailDetails => L<Paws::MediaConnect::ThumbnailDetails>

The details of the thumbnail, including thumbnail base64 string,
timecode and the time when thumbnail was generated.


=head2 _request_id => Str


=cut

