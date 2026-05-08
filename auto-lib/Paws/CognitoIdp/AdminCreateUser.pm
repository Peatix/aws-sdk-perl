
package Paws::CognitoIdp::AdminCreateUser;
  use Moose;
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has DesiredDeliveryMediums => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForceAliasCreation => (is => 'ro', isa => 'Bool');
  has MessageAction => (is => 'ro', isa => 'Str');
  has TemporaryPassword => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has ValidationData => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminCreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminCreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminCreateUser - Arguments for method AdminCreateUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminCreateUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminCreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminCreateUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminCreateUserResponse = $cognito -idp->AdminCreateUser(
      UserPoolId     => 'MyUserPoolIdType',
      Username       => 'MyUsernameType',
      ClientMetadata => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      DesiredDeliveryMediums => [
        'SMS', ...    # values: SMS, EMAIL
      ],    # OPTIONAL
      ForceAliasCreation => 1,                   # OPTIONAL
      MessageAction      => 'RESEND',            # OPTIONAL
      TemporaryPassword  => 'MyPasswordType',    # OPTIONAL
      UserAttributes     => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ValidationData => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $User = $AdminCreateUserResponse->User;

    # Returns a L<Paws::CognitoIdp::AdminCreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the AdminCreateUser API action, Amazon Cognito
invokes the function that is assigned to the I<pre sign-up> trigger.
When Amazon Cognito invokes this function, it passes a JSON payload,
which the function receives as input. This payload contains a
C<ClientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your AdminCreateUser request. In
your function code in Lambda, you can process the C<clientMetadata>
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




=head2 DesiredDeliveryMediums => ArrayRef[Str|Undef]

Specify C<EMAIL> if email will be used to send the welcome message.
Specify C<SMS> if the phone number will be used. The default value is
C<SMS>. You can specify more than one value.



=head2 ForceAliasCreation => Bool

This parameter is used only if the C<phone_number_verified> or
C<email_verified> attribute is set to C<True>. Otherwise, it is
ignored.

If this parameter is set to C<True> and the phone number or email
address specified in the C<UserAttributes> parameter already exists as
an alias with a different user, this request migrates the alias from
the previous user to the newly-created user. The previous user will no
longer be able to log in using that alias.

If this parameter is set to C<False>, the API throws an
C<AliasExistsException> error if the alias already exists. The default
value is C<False>.



=head2 MessageAction => Str

Set to C<RESEND> to resend the invitation message to a user that
already exists, and to reset the temporary-password duration with a new
temporary password. Set to C<SUPPRESS> to suppress sending the message.
You can specify only one value.

Valid values are: C<"RESEND">, C<"SUPPRESS">

=head2 TemporaryPassword => Str

The user's temporary password. This password must conform to the
password policy that you specified when you created the user pool.

The exception to the requirement for a password is when your user pool
supports passwordless sign-in with email or SMS OTPs. To create a user
with no password, omit this parameter or submit a blank value. You can
only create a passwordless user when passwordless sign-in is available.

The temporary password is valid only once. To complete the Admin Create
User flow, the user must enter the temporary password in the sign-in
page, along with a new password to be used in all future sign-ins.

If you don't specify a value, Amazon Cognito generates one for you
unless you have passwordless options active for your user pool.

The temporary password can only be used until the user account
expiration limit that you set for your user pool. To reset the account
after that time limit, you must call C<AdminCreateUser> again and
specify C<RESEND> for the C<MessageAction> parameter.



=head2 UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs that contain user attributes and attribute
values to be set for the user to be created. You can create a user
without specifying any attributes other than C<Username>. However, any
attributes that you specify as required (when creating a user pool or
in the B<Attributes> tab of the console) either you should supply (in
your call to C<AdminCreateUser>) or the user should supply (when they
sign up in response to your welcome message).

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.

To send a message inviting the user to sign up, you must specify the
user's email address or phone number. You can do this in your call to
AdminCreateUser or in the B<Users> tab of the Amazon Cognito console
for managing your user pools.

You must also provide an email address or phone number when you expect
the user to do passwordless sign-in with an email or SMS OTP. These
attributes must be provided when passwordless options are the only
available, or when you don't submit a C<TemporaryPassword>.

In your C<AdminCreateUser> request, you can set the C<email_verified>
and C<phone_number_verified> attributes to C<true>. The following
conditions apply:

=over

=item email

The email address where you want the user to receive their confirmation
code and username. You must provide a value for C<email> when you want
to set C<email_verified> to C<true>, or if you set C<EMAIL> in the
C<DesiredDeliveryMediums> parameter.

=item phone_number

The phone number where you want the user to receive their confirmation
code and username. You must provide a value for C<phone_number> when
you want to set C<phone_number_verified> to C<true>, or if you set
C<SMS> in the C<DesiredDeliveryMediums> parameter.

=back




=head2 B<REQUIRED> Username => Str

The value that you want to set as the username sign-in attribute. The
following conditions apply to the username parameter.

=over

=item *

The username can't be a duplicate of another username in the same user
pool.

=item *

You can't change the value of a username after you create it.

=item *

You can only provide a value if usernames are a valid sign-in attribute
for your user pool. If your user pool only supports phone numbers or
email addresses as sign-in attributes, Amazon Cognito automatically
generates a username value. For more information, see Customizing
sign-in attributes
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases).

=back




=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to create a user.



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

This class forms part of L<Paws>, documenting arguments for method AdminCreateUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

