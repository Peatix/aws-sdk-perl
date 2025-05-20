
package Paws::SocialMessaging::PostWhatsAppMessageMedia;
  use Moose;
  has OriginationPhoneNumberId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originationPhoneNumberId', required => 1);
  has SourceS3File => (is => 'ro', isa => 'Paws::SocialMessaging::S3File', traits => ['NameInRequest'], request_name => 'sourceS3File');
  has SourceS3PresignedUrl => (is => 'ro', isa => 'Paws::SocialMessaging::S3PresignedUrl', traits => ['NameInRequest'], request_name => 'sourceS3PresignedUrl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostWhatsAppMessageMedia');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/media');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::PostWhatsAppMessageMediaOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::PostWhatsAppMessageMedia - Arguments for method PostWhatsAppMessageMedia on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostWhatsAppMessageMedia on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method PostWhatsAppMessageMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostWhatsAppMessageMedia.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $PostWhatsAppMessageMediaOutput =
      $social -messaging->PostWhatsAppMessageMedia(
      OriginationPhoneNumberId => 'MyWhatsAppPhoneNumberId',
      SourceS3File             => {
        BucketName => 'MyS3FileBucketNameString',    # min: 3, max: 63
        Key        => 'MyS3FileKeyString',           # max: 1024

      },    # OPTIONAL
      SourceS3PresignedUrl => {
        Headers => { 'MyString' => 'MyString', },
        Url     => 'MyS3PresignedUrlUrlString',     # min: 1, max: 2000

      },    # OPTIONAL
      );

    # Results:
    my $MediaId = $PostWhatsAppMessageMediaOutput->MediaId;

    # Returns a L<Paws::SocialMessaging::PostWhatsAppMessageMediaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/PostWhatsAppMessageMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OriginationPhoneNumberId => Str

The ID of the phone number to associate with the WhatsApp media file.
The phone number identifiers are formatted as
C<phone-number-id-01234567890123456789012345678901>. Use
GetLinkedWhatsAppBusinessAccount
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html)
to find a phone number's id.



=head2 SourceS3File => L<Paws::SocialMessaging::S3File>

The source S3 url for the media file.



=head2 SourceS3PresignedUrl => L<Paws::SocialMessaging::S3PresignedUrl>

The source presign url of the media file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostWhatsAppMessageMedia in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

