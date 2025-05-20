
package Paws::KinesisVideo::UpdateImageGenerationConfiguration;
  use Moose;
  has ImageGenerationConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::ImageGenerationConfiguration');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImageGenerationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateImageGenerationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UpdateImageGenerationConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UpdateImageGenerationConfiguration - Arguments for method UpdateImageGenerationConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImageGenerationConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UpdateImageGenerationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImageGenerationConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UpdateImageGenerationConfigurationOutput =
      $kinesisvideo->UpdateImageGenerationConfiguration(
      ImageGenerationConfiguration => {
        DestinationConfig => {
          DestinationRegion => 'MyDestinationRegion',    # min: 9, max: 14
          Uri               => 'MyDestinationUri',       # min: 1, max: 255

        },
        Format            => 'JPEG',                     # values: JPEG, PNG
        ImageSelectorType =>
          'SERVER_TIMESTAMP',    # values: SERVER_TIMESTAMP, PRODUCER_TIMESTAMP
        SamplingInterval => 1,
        Status           => 'ENABLED',    # values: ENABLED, DISABLED
        FormatConfig     => {
          'JPEGQuality' =>
            'MyFormatConfigValue',   # key: values: JPEGQuality, value: max: 256
        },    # min: 1, max: 1; OPTIONAL
        HeightPixels => 1,    # min: 1, max: 2160; OPTIONAL
        WidthPixels  => 1,    # min: 1, max: 3840; OPTIONAL
      },    # OPTIONAL
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UpdateImageGenerationConfiguration>

=head1 ATTRIBUTES


=head2 ImageGenerationConfiguration => L<Paws::KinesisVideo::ImageGenerationConfiguration>

The structure that contains the information required for the KVS images
delivery. If the structure is null, the configuration will be deleted
from the stream.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the Kinesis video stream from where
you want to update the image generation configuration. You must specify
either the C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream from which to update the image generation
configuration. You must specify either the C<StreamName> or the
C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImageGenerationConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

