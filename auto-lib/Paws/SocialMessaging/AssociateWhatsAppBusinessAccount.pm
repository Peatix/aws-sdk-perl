
package Paws::SocialMessaging::AssociateWhatsAppBusinessAccount;
  use Moose;
  has SetupFinalization => (is => 'ro', isa => 'Paws::SocialMessaging::WhatsAppSetupFinalization', traits => ['NameInRequest'], request_name => 'setupFinalization');
  has SignupCallback => (is => 'ro', isa => 'Paws::SocialMessaging::WhatsAppSignupCallback', traits => ['NameInRequest'], request_name => 'signupCallback');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWhatsAppBusinessAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/signup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::AssociateWhatsAppBusinessAccountOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::AssociateWhatsAppBusinessAccount - Arguments for method AssociateWhatsAppBusinessAccount on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWhatsAppBusinessAccount on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method AssociateWhatsAppBusinessAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWhatsAppBusinessAccount.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $AssociateWhatsAppBusinessAccountOutput =
      $social -messaging->AssociateWhatsAppBusinessAccount(
      SetupFinalization => {
        AssociateInProgressToken => 'MyAssociateInProgressToken',    # max: 50
        PhoneNumbers             => [
          {
            Id           => 'MyWhatsAppPhoneNumber',         # min: 1, max: 100
            TwoFactorPin => 'MyTwoFactorPin',                # min: 1, max: 6
            DataLocalizationRegion => 'MyIsoCountryCode',    # OPTIONAL
            Tags                   => [
              {
                Key   => 'MyTagKeyString',      # min: 1, max: 128
                Value => 'MyTagValueString',    # max: 256; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],
        PhoneNumberParent =>
          'MyLinkedWhatsAppBusinessAccountId',    # min: 1, max: 100; OPTIONAL
        Waba => {
          EventDestinations => [
            {
              EventDestinationArn => 'MyEventDestinationArn',    # max: 2048
              RoleArn             => 'MyRoleArn',                # OPTIONAL
            },
            ...
          ],    # max: 1; OPTIONAL
          Id   => 'MyWhatsAppBusinessAccountId',    # min: 1, max: 100; OPTIONAL
          Tags => [
            {
              Key   => 'MyTagKeyString',      # min: 1, max: 128
              Value => 'MyTagValueString',    # max: 256; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SignupCallback => {
        AccessToken => 'MyWhatsAppSignupCallbackAccessTokenString',  # max: 1000

      },    # OPTIONAL
      );

    # Results:
    my $SignupCallbackResult =
      $AssociateWhatsAppBusinessAccountOutput->SignupCallbackResult;
    my $StatusCode = $AssociateWhatsAppBusinessAccountOutput->StatusCode;

# Returns a L<Paws::SocialMessaging::AssociateWhatsAppBusinessAccountOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/AssociateWhatsAppBusinessAccount>

=head1 ATTRIBUTES


=head2 SetupFinalization => L<Paws::SocialMessaging::WhatsAppSetupFinalization>

A JSON object that contains the phone numbers and WhatsApp Business
Account to link to your account.



=head2 SignupCallback => L<Paws::SocialMessaging::WhatsAppSignupCallback>

Contains the callback access token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWhatsAppBusinessAccount in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

