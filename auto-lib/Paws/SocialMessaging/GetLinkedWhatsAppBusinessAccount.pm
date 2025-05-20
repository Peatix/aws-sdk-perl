
package Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccount;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLinkedWhatsAppBusinessAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/waba/details');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccount - Arguments for method GetLinkedWhatsAppBusinessAccount on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLinkedWhatsAppBusinessAccount on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method GetLinkedWhatsAppBusinessAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLinkedWhatsAppBusinessAccount.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $GetLinkedWhatsAppBusinessAccountOutput =
      $social -messaging->GetLinkedWhatsAppBusinessAccount(
      Id => 'MyLinkedWhatsAppBusinessAccountId',

      );

    # Results:
    my $Account = $GetLinkedWhatsAppBusinessAccountOutput->Account;

# Returns a L<Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/GetLinkedWhatsAppBusinessAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier, from Amazon Web Services, of the linked WhatsApp
Business Account. WABA identifiers are formatted as
C<waba-01234567890123456789012345678901>. Use
ListLinkedWhatsAppBusinessAccounts
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html)
to list all WABAs and their details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLinkedWhatsAppBusinessAccount in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

