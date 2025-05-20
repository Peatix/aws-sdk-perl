
package Paws::SocialMessaging::SendWhatsAppMessage;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message', required => 1);
  has MetaApiVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metaApiVersion', required => 1);
  has OriginationPhoneNumberId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originationPhoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendWhatsAppMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/send');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::SendWhatsAppMessageOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::SendWhatsAppMessage - Arguments for method SendWhatsAppMessage on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendWhatsAppMessage on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method SendWhatsAppMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendWhatsAppMessage.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $SendWhatsAppMessageOutput = $social -messaging->SendWhatsAppMessage(
      Message                  => 'BlobWhatsAppMessageBlob',
      MetaApiVersion           => 'MyString',
      OriginationPhoneNumberId => 'MyWhatsAppPhoneNumberId',

    );

    # Results:
    my $MessageId = $SendWhatsAppMessageOutput->MessageId;

    # Returns a L<Paws::SocialMessaging::SendWhatsAppMessageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/SendWhatsAppMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

The message to send through WhatsApp. The length is in KB. The message
field passes through a WhatsApp Message object, see Messages
(https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages)
in the I<WhatsApp Business Platform Cloud API Reference>.



=head2 B<REQUIRED> MetaApiVersion => Str

The API version for the request formatted as C<v{VersionNumber}>. For a
list of supported API versions and Amazon Web Services Regions, see
I<Amazon Web Services End User Messaging Social API> Service Endpoints
(https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html)
in the I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> OriginationPhoneNumberId => Str

The ID of the phone number used to send the WhatsApp message. If you
are sending a media file only the C<originationPhoneNumberId> used to
upload the file can be used. Phone number identifiers are formatted as
C<phone-number-id-01234567890123456789012345678901>. Use
GetLinkedWhatsAppBusinessAccount
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html)
to find a phone number's id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendWhatsAppMessage in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

