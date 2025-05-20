
package Paws::SNS::GetPlatformApplicationAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::MapStringToString>

Attributes include the following:

=over

=item *

C<AppleCertificateExpiryDate> E<ndash> The expiry date of the SSL
certificate used to configure certificate-based authentication.

=item *

C<ApplePlatformTeamID> E<ndash> The Apple developer account ID used to
configure token-based authentication.

=item *

C<ApplePlatformBundleID> E<ndash> The app identifier used to configure
token-based authentication.

=item *

C<AuthenticationMethod> E<ndash> Returns the credential type used when
sending push notifications from application to APNS/APNS_Sandbox, or
application to GCM.

=over

=item *

APNS E<ndash> Returns the token or certificate.

=item *

GCM E<ndash> Returns the token or key.

=back

=item *

C<EventEndpointCreated> E<ndash> Topic ARN to which EndpointCreated
event notifications should be sent.

=item *

C<EventEndpointDeleted> E<ndash> Topic ARN to which EndpointDeleted
event notifications should be sent.

=item *

C<EventEndpointUpdated> E<ndash> Topic ARN to which EndpointUpdate
event notifications should be sent.

=item *

C<EventDeliveryFailure> E<ndash> Topic ARN to which DeliveryFailure
event notifications should be sent upon Direct Publish delivery failure
(permanent) to one of the application's endpoints.

=back



=head2 _request_id => Str


=cut

