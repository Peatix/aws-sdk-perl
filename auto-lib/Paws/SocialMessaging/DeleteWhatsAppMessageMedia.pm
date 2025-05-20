
package Paws::SocialMessaging::DeleteWhatsAppMessageMedia;
  use Moose;
  has MediaId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mediaId', required => 1);
  has OriginationPhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'originationPhoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWhatsAppMessageMedia');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/media');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::DeleteWhatsAppMessageMediaOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::DeleteWhatsAppMessageMedia - Arguments for method DeleteWhatsAppMessageMedia on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWhatsAppMessageMedia on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method DeleteWhatsAppMessageMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWhatsAppMessageMedia.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $DeleteWhatsAppMessageMediaOutput =
      $social -messaging->DeleteWhatsAppMessageMedia(
      MediaId                  => 'MyWhatsAppMediaId',
      OriginationPhoneNumberId => 'MyWhatsAppPhoneNumberId',

      );

    # Results:
    my $Success = $DeleteWhatsAppMessageMediaOutput->Success;

  # Returns a L<Paws::SocialMessaging::DeleteWhatsAppMessageMediaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/DeleteWhatsAppMessageMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MediaId => Str

The unique identifier of the media file to delete. Use the C<mediaId>
returned from PostWhatsAppMessageMedia
(https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html).



=head2 B<REQUIRED> OriginationPhoneNumberId => Str

The unique identifier of the originating phone number associated with
the media. Phone number identifiers are formatted as
C<phone-number-id-01234567890123456789012345678901>. Use
GetLinkedWhatsAppBusinessAccount
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html)
to find a phone number's id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWhatsAppMessageMedia in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

