
package Paws::SNS::SetPlatformApplicationAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString', required => 1);
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetPlatformApplicationAttributes - Arguments for method SetPlatformApplicationAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetPlatformApplicationAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetPlatformApplicationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetPlatformApplicationAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetPlatformApplicationAttributes(
      Attributes             => { 'MyString' => 'MyString', },
      PlatformApplicationArn => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetPlatformApplicationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::SNS::MapStringToString>

A map of the platform application attributes. Attributes in this map
include the following:

=over

=item *

C<PlatformCredential> E<ndash> The credential received from the
notification service.

=over

=item *

For ADM, C<PlatformCredential>is client secret.

=item *

For Apple Services using certificate credentials, C<PlatformCredential>
is private key.

=item *

For Apple Services using token credentials, C<PlatformCredential> is
signing key.

=item *

For GCM (Firebase Cloud Messaging) using key credentials, there is no
C<PlatformPrincipal>. The C<PlatformCredential> is C<API key>.

=item *

For GCM (Firebase Cloud Messaging) using token credentials, there is no
C<PlatformPrincipal>. The C<PlatformCredential> is a JSON formatted
private key file. When using the Amazon Web Services CLI, the file must
be in string format and special characters must be ignored. To format
the file correctly, Amazon SNS recommends using the following command:
C<SERVICE_JSON=`jq @json E<lt>E<lt>E<lt> cat service.json`>.

=back

=back

=over

=item *

C<PlatformPrincipal> E<ndash> The principal received from the
notification service.

=over

=item *

For ADM, C<PlatformPrincipal>is client id.

=item *

For Apple Services using certificate credentials, C<PlatformPrincipal>
is SSL certificate.

=item *

For Apple Services using token credentials, C<PlatformPrincipal> is
signing key ID.

=item *

For GCM (Firebase Cloud Messaging), there is no C<PlatformPrincipal>.

=back

=back

=over

=item *

C<EventEndpointCreated> E<ndash> Topic ARN to which C<EndpointCreated>
event notifications are sent.

=item *

C<EventEndpointDeleted> E<ndash> Topic ARN to which C<EndpointDeleted>
event notifications are sent.

=item *

C<EventEndpointUpdated> E<ndash> Topic ARN to which C<EndpointUpdate>
event notifications are sent.

=item *

C<EventDeliveryFailure> E<ndash> Topic ARN to which C<DeliveryFailure>
event notifications are sent upon Direct Publish delivery failure
(permanent) to one of the application's endpoints.

=item *

C<SuccessFeedbackRoleArn> E<ndash> IAM role ARN used to give Amazon SNS
write access to use CloudWatch Logs on your behalf.

=item *

C<FailureFeedbackRoleArn> E<ndash> IAM role ARN used to give Amazon SNS
write access to use CloudWatch Logs on your behalf.

=item *

C<SuccessFeedbackSampleRate> E<ndash> Sample rate percentage (0-100) of
successfully delivered messages.

=back

The following attributes only apply to C<APNs> token-based
authentication:

=over

=item *

C<ApplePlatformTeamID> E<ndash> The identifier that's assigned to your
Apple developer account team.

=item *

C<ApplePlatformBundleID> E<ndash> The bundle identifier that's assigned
to your iOS app.

=back




=head2 B<REQUIRED> PlatformApplicationArn => Str

C<PlatformApplicationArn> for C<SetPlatformApplicationAttributes>
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetPlatformApplicationAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

