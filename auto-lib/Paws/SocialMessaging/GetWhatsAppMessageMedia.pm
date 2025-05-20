
package Paws::SocialMessaging::GetWhatsAppMessageMedia;
  use Moose;
  has DestinationS3File => (is => 'ro', isa => 'Paws::SocialMessaging::S3File', traits => ['NameInRequest'], request_name => 'destinationS3File');
  has DestinationS3PresignedUrl => (is => 'ro', isa => 'Paws::SocialMessaging::S3PresignedUrl', traits => ['NameInRequest'], request_name => 'destinationS3PresignedUrl');
  has MediaId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaId', required => 1);
  has MetadataOnly => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'metadataOnly');
  has OriginationPhoneNumberId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originationPhoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWhatsAppMessageMedia');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/media/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::GetWhatsAppMessageMediaOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::GetWhatsAppMessageMedia - Arguments for method GetWhatsAppMessageMedia on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWhatsAppMessageMedia on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method GetWhatsAppMessageMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWhatsAppMessageMedia.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $GetWhatsAppMessageMediaOutput =
      $social -messaging->GetWhatsAppMessageMedia(
      MediaId                  => 'MyWhatsAppMediaId',
      OriginationPhoneNumberId => 'MyWhatsAppPhoneNumberId',
      DestinationS3File        => {
        BucketName => 'MyS3FileBucketNameString',    # min: 3, max: 63
        Key        => 'MyS3FileKeyString',           # max: 1024

      },    # OPTIONAL
      DestinationS3PresignedUrl => {
        Headers => { 'MyString' => 'MyString', },
        Url     => 'MyS3PresignedUrlUrlString',     # min: 1, max: 2000

      },    # OPTIONAL
      MetadataOnly => 1,    # OPTIONAL
      );

    # Results:
    my $FileSize = $GetWhatsAppMessageMediaOutput->FileSize;
    my $MimeType = $GetWhatsAppMessageMediaOutput->MimeType;

    # Returns a L<Paws::SocialMessaging::GetWhatsAppMessageMediaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/GetWhatsAppMessageMedia>

=head1 ATTRIBUTES


=head2 DestinationS3File => L<Paws::SocialMessaging::S3File>

The C<bucketName> and C<key> of the S3 media file.



=head2 DestinationS3PresignedUrl => L<Paws::SocialMessaging::S3PresignedUrl>

The presign url of the media file.



=head2 B<REQUIRED> MediaId => Str

The unique identifier for the media file.



=head2 MetadataOnly => Bool

Set to C<True> to get only the metadata for the file.



=head2 B<REQUIRED> OriginationPhoneNumberId => Str

The unique identifier of the originating phone number for the WhatsApp
message media. The phone number identifiers are formatted as
C<phone-number-id-01234567890123456789012345678901>. Use
GetLinkedWhatsAppBusinessAccount
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html)
to find a phone number's id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWhatsAppMessageMedia in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

