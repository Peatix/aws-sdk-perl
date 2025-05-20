
package Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinations;
  use Moose;
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::SocialMessaging::WhatsAppBusinessAccountEventDestination]', traits => ['NameInRequest'], request_name => 'eventDestinations', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutWhatsAppBusinessAccountEventDestinations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/whatsapp/waba/eventdestinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinations - Arguments for method PutWhatsAppBusinessAccountEventDestinations on L<Paws::SocialMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutWhatsAppBusinessAccountEventDestinations on the
L<AWS End User Messaging Social|Paws::SocialMessaging> service. Use the attributes of this class
as arguments to method PutWhatsAppBusinessAccountEventDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutWhatsAppBusinessAccountEventDestinations.

=head1 SYNOPSIS

    my $social-messaging = Paws->service('SocialMessaging');
    my $PutWhatsAppBusinessAccountEventDestinationsOutput =
      $social -messaging->PutWhatsAppBusinessAccountEventDestinations(
      EventDestinations => [
        {
          EventDestinationArn => 'MyEventDestinationArn',    # max: 2048
          RoleArn             => 'MyRoleArn',                # OPTIONAL
        },
        ...
      ],
      Id => 'MyLinkedWhatsAppBusinessAccountId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/social-messaging/PutWhatsAppBusinessAccountEventDestinations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventDestinations => ArrayRef[L<Paws::SocialMessaging::WhatsAppBusinessAccountEventDestination>]

An array of C<WhatsAppBusinessAccountEventDestination> event
destinations.



=head2 B<REQUIRED> Id => Str

The unique identifier of your WhatsApp Business Account. WABA
identifiers are formatted as C<waba-01234567890123456789012345678901>.
Use ListLinkedWhatsAppBusinessAccounts
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html)
to list all WABAs and their details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutWhatsAppBusinessAccountEventDestinations in L<Paws::SocialMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

