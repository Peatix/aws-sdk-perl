
package Paws::CognitoIdp::AdminUpdateDeviceStatus;
  use Moose;
  has DeviceKey => (is => 'ro', isa => 'Str', required => 1);
  has DeviceRememberedStatus => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminUpdateDeviceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminUpdateDeviceStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminUpdateDeviceStatus - Arguments for method AdminUpdateDeviceStatus on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminUpdateDeviceStatus on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminUpdateDeviceStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminUpdateDeviceStatus.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminUpdateDeviceStatusResponse =
      $cognito -idp->AdminUpdateDeviceStatus(
      DeviceKey              => 'MyDeviceKeyType',
      UserPoolId             => 'MyUserPoolIdType',
      Username               => 'MyUsernameType',
      DeviceRememberedStatus => 'remembered',         # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceKey => Str

The unique identifier, or device key, of the device that you want to
update the status for.



=head2 DeviceRememberedStatus => Str

To enable device authentication with the specified device, set to
C<remembered>.To disable, set to C<not_remembered>.

Valid values are: C<"remembered">, C<"not_remembered">

=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to change a user's device
status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminUpdateDeviceStatus in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

