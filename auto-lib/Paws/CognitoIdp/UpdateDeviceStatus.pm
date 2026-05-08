
package Paws::CognitoIdp::UpdateDeviceStatus;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has DeviceKey => (is => 'ro', isa => 'Str', required => 1);
  has DeviceRememberedStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeviceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateDeviceStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateDeviceStatus - Arguments for method UpdateDeviceStatus on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceStatus on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateDeviceStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceStatus.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateDeviceStatusResponse = $cognito -idp->UpdateDeviceStatus(
      AccessToken            => 'MyTokenModelType',
      DeviceKey              => 'MyDeviceKeyType',
      DeviceRememberedStatus => 'remembered',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.



=head2 B<REQUIRED> DeviceKey => Str

The device key of the device you want to update, for example
C<us-west-2_a1b2c3d4-5678-90ab-cdef-EXAMPLE11111>.



=head2 DeviceRememberedStatus => Str

To enable device authentication with the specified device, set to
C<remembered>.To disable, set to C<not_remembered>.

Valid values are: C<"remembered">, C<"not_remembered">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceStatus in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

