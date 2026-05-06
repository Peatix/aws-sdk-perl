
package Paws::CognitoIdp::ResendConfirmationCode;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResendConfirmationCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ResendConfirmationCodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ResendConfirmationCode - Arguments for method ResendConfirmationCode on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResendConfirmationCode on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ResendConfirmationCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResendConfirmationCode.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ResendConfirmationCodeResponse = $cognito -idp->ResendConfirmationCode(
      ClientId          => 'MyClientIdType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType'
        ,    # key: max: 131072; OPTIONAL, value: max: 131072; OPTIONAL
      },    # OPTIONAL
      SecretHash      => 'MySecretHashType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',          # max: 131072; OPTIONAL
        IpAddress   => 'MyStringType',          # max: 131072; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetails =
      $ResendConfirmationCodeResponse->CodeDeliveryDetails;

    # Returns a L<Paws::CognitoIdp::ResendConfirmationCodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

Information that supports analytics outcomes with Amazon Pinpoint,
including the user's endpoint ID. The endpoint ID is a destination for
Amazon Pinpoint push notifications, for example a device identifier,
email address, or phone number.



=head2 B<REQUIRED> ClientId => Str

The ID of the user pool app client where the user signed up.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the ResendConfirmationCode API action, Amazon
Cognito invokes the function that is assigned to the I<custom message>
trigger. When Amazon Cognito invokes this function, it passes a JSON
payload, which the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your ResendConfirmationCode request.
In your function code in Lambda, you can process the C<clientMetadata>
value to enhance your workflow for your specific needs.

For more information, see Using Lambda triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html)
in the I<Amazon Cognito Developer Guide>.

When you use the C<ClientMetadata> parameter, note that Amazon Cognito
won't do the following:

=over

=item *

Store the C<ClientMetadata> value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers,
the C<ClientMetadata> parameter serves no purpose.

=item *

Validate the C<ClientMetadata> value.

=item *

Encrypt the C<ClientMetadata> value. Don't send sensitive information
in this parameter.

=back




=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message. For more information about C<SecretHash>, see Computing secret
hash values
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data about your user session like the device fingerprint, IP
address, or location. Amazon Cognito threat protection evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.

For more information, see Collecting data for threat protection in
applications
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).



=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResendConfirmationCode in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

