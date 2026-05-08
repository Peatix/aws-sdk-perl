
package Paws::CognitoIdp::GetUserAttributeVerificationCode;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserAttributeVerificationCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAttributeVerificationCode - Arguments for method GetUserAttributeVerificationCode on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserAttributeVerificationCode on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetUserAttributeVerificationCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserAttributeVerificationCode.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetUserAttributeVerificationCodeResponse =
      $cognito -idp->GetUserAttributeVerificationCode(
      AccessToken    => 'MyTokenModelType',
      AttributeName  => 'MyAttributeNameType',
      ClientMetadata => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      );

    # Results:
    my $CodeDeliveryDetails =
      $GetUserAttributeVerificationCodeResponse->CodeDeliveryDetails;

# Returns a L<Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.



=head2 B<REQUIRED> AttributeName => Str

The name of the attribute that the user wants to verify, for example
C<email>.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the GetUserAttributeVerificationCode API action,
Amazon Cognito invokes the function that is assigned to the I<custom
message> trigger. When Amazon Cognito invokes this function, it passes
a JSON payload, which the function receives as input. This payload
contains a C<clientMetadata> attribute, which provides the data that
you assigned to the ClientMetadata parameter in your
GetUserAttributeVerificationCode request. In your function code in
Lambda, you can process the C<clientMetadata> value to enhance your
workflow for your specific needs.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserAttributeVerificationCode in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

