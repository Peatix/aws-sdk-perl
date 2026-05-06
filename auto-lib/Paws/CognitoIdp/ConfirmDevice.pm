
package Paws::CognitoIdp::ConfirmDevice;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has DeviceKey => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str');
  has DeviceSecretVerifierConfig => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceSecretVerifierConfigType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmDevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmDeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmDevice - Arguments for method ConfirmDevice on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmDevice on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ConfirmDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmDevice.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ConfirmDeviceResponse = $cognito -idp->ConfirmDevice(
      AccessToken                => 'MyTokenModelType',
      DeviceKey                  => 'MyDeviceKeyType',
      DeviceName                 => 'MyDeviceNameType',    # OPTIONAL
      DeviceSecretVerifierConfig => {
        PasswordVerifier => 'MyStringType',    # max: 131072; OPTIONAL
        Salt             => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $UserConfirmationNecessary =
      $ConfirmDeviceResponse->UserConfirmationNecessary;

    # Returns a L<Paws::CognitoIdp::ConfirmDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.



=head2 B<REQUIRED> DeviceKey => Str

The unique identifier, or device key, of the device that you want to
update the status for.



=head2 DeviceName => Str

A friendly name for the device, for example C<MyMobilePhone>.



=head2 DeviceSecretVerifierConfig => L<Paws::CognitoIdp::DeviceSecretVerifierConfigType>

The configuration of the device secret verifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmDevice in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

