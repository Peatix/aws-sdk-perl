
package Paws::KinesisVideo::DescribeImageGenerationConfigurationOutput;
  use Moose;
  has ImageGenerationConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::ImageGenerationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeImageGenerationConfigurationOutput

=head1 ATTRIBUTES


=head2 ImageGenerationConfiguration => L<Paws::KinesisVideo::ImageGenerationConfiguration>

The structure that contains the information required for the Kinesis
video stream (KVS) images delivery. If this structure is null, the
configuration will be deleted from the stream.


=head2 _request_id => Str


=cut

