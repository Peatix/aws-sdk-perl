
package Paws::CognitoIdp::ConfirmSignUp;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has ConfirmationCode => (is => 'ro', isa => 'Str', required => 1);
  has ForceAliasCreation => (is => 'ro', isa => 'Bool');
  has SecretHash => (is => 'ro', isa => 'Str');
  has Session => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSignUp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmSignUpResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmSignUp - Arguments for method ConfirmSignUp on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmSignUp on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ConfirmSignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmSignUp.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ConfirmSignUpResponse = $cognito -idp->ConfirmSignUp(
      ClientId          => 'MyClientIdType',
      ConfirmationCode  => 'MyConfirmationCodeType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType'
        ,    # key: max: 131072; OPTIONAL, value: max: 131072; OPTIONAL
      },    # OPTIONAL
      ForceAliasCreation => 1,                     # OPTIONAL
      SecretHash         => 'MySecretHashType',    # OPTIONAL
      Session            => 'MySessionType',       # OPTIONAL
      UserContextData    => {
        EncodedData => 'MyStringType',             # max: 131072; OPTIONAL
        IpAddress   => 'MyStringType',             # max: 131072; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Session = $ConfirmSignUpResponse->Session;

    # Returns a L<Paws::CognitoIdp::ConfirmSignUpResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

Information that supports analytics outcomes with Amazon Pinpoint,
including the user's endpoint ID. The endpoint ID is a destination for
Amazon Pinpoint push notifications, for example a device identifier,
email address, or phone number.



=head2 B<REQUIRED> ClientId => Str

The ID of the app client associated with the user pool.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the ConfirmSignUp API action, Amazon Cognito
invokes the function that is assigned to the I<post confirmation>
trigger. When Amazon Cognito invokes this function, it passes a JSON
payload, which the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your ConfirmSignUp request. In your
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




=head2 B<REQUIRED> ConfirmationCode => Str

The confirmation code that your user pool sent in response to the
C<SignUp> request.



=head2 ForceAliasCreation => Bool

When C<true>, forces user confirmation despite any existing aliases.
Defaults to C<false>. A value of C<true> migrates the alias from an
existing user to the new user if an existing user already has the phone
number or email address as an alias.

Say, for example, that an existing user has an C<email> attribute of
C<bob@example.com> and email is an alias in your user pool. If the new
user also has an email of C<bob@example.com> and your C<ConfirmSignUp>
response sets C<ForceAliasCreation> to C<true>, the new user can sign
in with a username of C<bob@example.com> and the existing user can no
longer do so.

If C<false> and an attribute belongs to an existing alias, this request
returns an B<AliasExistsException> error.

For more information about sign-in aliases, see Customizing sign-in
attributes
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases).



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message. For more information about C<SecretHash>, see Computing secret
hash values
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).



=head2 Session => Str

The optional session ID from a C<SignUp> API request. You can sign in a
user directly from the sign-up process with the C<USER_AUTH>
authentication flow.



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

This class forms part of L<Paws>, documenting arguments for method ConfirmSignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

