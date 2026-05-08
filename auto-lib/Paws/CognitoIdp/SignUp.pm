
package Paws::CognitoIdp::SignUp;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has Password => (is => 'ro', isa => 'Str');
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has ValidationData => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignUp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SignUpResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUp - Arguments for method SignUp on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SignUp on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SignUp.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SignUpResponse = $cognito -idp->SignUp(
      ClientId          => 'MyClientIdType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType'
        ,    # key: max: 131072; OPTIONAL, value: max: 131072; OPTIONAL
      },    # OPTIONAL
      Password       => 'MyPasswordType',      # OPTIONAL
      SecretHash     => 'MySecretHashType',    # OPTIONAL
      UserAttributes => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',    # max: 131072; OPTIONAL
        IpAddress   => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      ValidationData => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetails = $SignUpResponse->CodeDeliveryDetails;
    my $Session             = $SignUpResponse->Session;
    my $UserConfirmed       = $SignUpResponse->UserConfirmed;
    my $UserSub             = $SignUpResponse->UserSub;

    # Returns a L<Paws::CognitoIdp::SignUpResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

Information that supports analytics outcomes with Amazon Pinpoint,
including the user's endpoint ID. The endpoint ID is a destination for
Amazon Pinpoint push notifications, for example a device identifier,
email address, or phone number.



=head2 B<REQUIRED> ClientId => Str

The ID of the app client where the user wants to sign up.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the SignUp API action, Amazon Cognito invokes
any functions that are assigned to the following triggers: I<pre
sign-up>, I<custom message>, and I<post confirmation>. When Amazon
Cognito invokes any of these functions, it passes a JSON payload, which
the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your SignUp request. In your
function code in Lambda, you can process the C<clientMetadata> value to
enhance your workflow for your specific needs.

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




=head2 Password => Str

The user's proposed password. The password must comply with the
password requirements
(https://docs.aws.amazon.com/cognito/latest/developerguide/managing-users-passwords.html)
of your user pool.

Users can sign up without a password when your user pool supports
passwordless sign-in with email or SMS OTPs. To create a user with no
password, omit this parameter or submit a blank value. You can only
create a passwordless user when passwordless sign-in is available.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message. For more information about C<SecretHash>, see Computing secret
hash values
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).



=head2 UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.

For custom attributes, include a C<custom:> prefix in the attribute
name, for example C<custom:department>.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data about your user session like the device fingerprint, IP
address, or location. Amazon Cognito threat protection evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.

For more information, see Collecting data for threat protection in
applications
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).



=head2 B<REQUIRED> Username => Str

The username of the user that you want to sign up. The value of this
parameter is typically a username, but can be any alias attribute in
your user pool.



=head2 ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

Temporary user attributes that contribute to the outcomes of your pre
sign-up Lambda trigger. This set of key-value pairs are for custom
validation of information that you collect from your users but don't
need to retain.

Your Lambda function can analyze this additional data and act on it.
Your function can automatically confirm and verify select users or
perform external API operations like logging user attributes and
validation data to Amazon CloudWatch Logs.

For more information about the pre sign-up Lambda trigger, see Pre
sign-up Lambda trigger
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

