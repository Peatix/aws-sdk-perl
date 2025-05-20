
package Paws::KinesisVideo::DescribeMediaStorageConfigurationOutput;
  use Moose;
  has MediaStorageConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::MediaStorageConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeMediaStorageConfigurationOutput

=head1 ATTRIBUTES


=head2 MediaStorageConfiguration => L<Paws::KinesisVideo::MediaStorageConfiguration>

A structure that encapsulates, or contains, the media storage
configuration properties.


=head2 _request_id => Str


=cut

