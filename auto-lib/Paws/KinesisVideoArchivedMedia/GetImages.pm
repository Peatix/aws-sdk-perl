
package Paws::KinesisVideoArchivedMedia::GetImages;
  use Moose;
  has EndTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has FormatConfig => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::FormatConfig');
  has HeightPixels => (is => 'ro', isa => 'Int');
  has ImageSelectorType => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SamplingInterval => (is => 'ro', isa => 'Int');
  has StartTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has WidthPixels => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getImages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetImagesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetImages - Arguments for method GetImages on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImages on the
L<Amazon Kinesis Video Streams Archived Media|Paws::KinesisVideoArchivedMedia> service. Use the attributes of this class
as arguments to method GetImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImages.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoArchivedMedia');
    my $GetImagesOutput = $kinesisvideo->GetImages(
      EndTimestamp      => '1970-01-01T01:00:00',
      Format            => 'JPEG',
      ImageSelectorType => 'PRODUCER_TIMESTAMP',
      StartTimestamp    => '1970-01-01T01:00:00',
      FormatConfig      => {
        'JPEGQuality' =>
          'MyFormatConfigValue',    # key: values: JPEGQuality, value: max: 256
      },    # OPTIONAL
      HeightPixels     => 1,                  # OPTIONAL
      MaxResults       => 1,                  # OPTIONAL
      NextToken        => 'MyNextToken',      # OPTIONAL
      SamplingInterval => 1,                  # OPTIONAL
      StreamARN        => 'MyResourceARN',    # OPTIONAL
      StreamName       => 'MyStreamName',     # OPTIONAL
      WidthPixels      => 1,                  # OPTIONAL
    );

    # Results:
    my $Images    = $GetImagesOutput->Images;
    my $NextToken = $GetImagesOutput->NextToken;

    # Returns a L<Paws::KinesisVideoArchivedMedia::GetImagesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetImages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTimestamp => Str

The end timestamp for the range of images to be generated. If the time
range between C<StartTimestamp> and C<EndTimestamp> is more than 300
seconds above C<StartTimestamp>, you will receive an
C<IllegalArgumentException>.



=head2 B<REQUIRED> Format => Str

The format that will be used to encode the image.

Valid values are: C<"JPEG">, C<"PNG">

=head2 FormatConfig => L<Paws::KinesisVideoArchivedMedia::FormatConfig>

The list of a key-value pair structure that contains extra parameters
that can be applied when the image is generated. The C<FormatConfig>
key is the C<JPEGQuality>, which indicates the JPEG quality key to be
used to generate the image. The C<FormatConfig> value accepts ints from
1 to 100. If the value is 1, the image will be generated with less
quality and the best compression. If the value is 100, the image will
be generated with the best quality and less compression. If no value is
provided, the default value of the C<JPEGQuality> key will be set to
80.



=head2 HeightPixels => Int

The height of the output image that is used in conjunction with the
C<WidthPixels> parameter. When both C<HeightPixels> and C<WidthPixels>
parameters are provided, the image will be stretched to fit the
specified aspect ratio. If only the C<HeightPixels> parameter is
provided, its original aspect ratio will be used to calculate the
C<WidthPixels> ratio. If neither parameter is provided, the original
image size will be returned.



=head2 B<REQUIRED> ImageSelectorType => Str

The origin of the Server or Producer timestamps to use to generate the
images.

Valid values are: C<"PRODUCER_TIMESTAMP">, C<"SERVER_TIMESTAMP">

=head2 MaxResults => Int

The maximum number of images to be returned by the API.

The default limit is 25 images per API response. Providing a
C<MaxResults> greater than this value will result in a page size of 25.
Any additional results will be paginated.



=head2 NextToken => Str

A token that specifies where to start paginating the next set of
Images. This is the C<GetImages:NextToken> from a previously truncated
response.



=head2 SamplingInterval => Int

The time interval in milliseconds (ms) at which the images need to be
generated from the stream. The minimum value that can be provided is
200 ms (5 images per second). If the timestamp range is less than the
sampling interval, the image from the C<startTimestamp> will be
returned if available.



=head2 B<REQUIRED> StartTimestamp => Str

The starting point from which the images should be generated. This
C<StartTimestamp> must be within an inclusive range of timestamps for
an image to be returned.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream from which to retrieve the
images. You must specify either the C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream from which to retrieve the images. You must
specify either the C<StreamName> or the C<StreamARN>.



=head2 WidthPixels => Int

The width of the output image that is used in conjunction with the
C<HeightPixels> parameter. When both C<WidthPixels> and C<HeightPixels>
parameters are provided, the image will be stretched to fit the
specified aspect ratio. If only the C<WidthPixels> parameter is
provided or if only the C<HeightPixels> is provided, a
C<ValidationException> will be thrown. If neither parameter is
provided, the original image size from the stream will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImages in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

