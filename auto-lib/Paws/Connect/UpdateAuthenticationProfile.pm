
package Paws::Connect::UpdateAuthenticationProfile;
  use Moose;
  has AllowedIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AuthenticationProfileId', required => 1);
  has BlockedIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has PeriodicSessionDuration => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAuthenticationProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authentication-profiles/{InstanceId}/{AuthenticationProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateAuthenticationProfile - Arguments for method UpdateAuthenticationProfile on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAuthenticationProfile on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateAuthenticationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAuthenticationProfile.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateAuthenticationProfile(
      AuthenticationProfileId => 'MyAuthenticationProfileId',
      InstanceId              => 'MyInstanceId',
      AllowedIps              => [
        'MyIpCidr', ...    # min: 2, max: 50
      ],    # OPTIONAL
      BlockedIps => [
        'MyIpCidr', ...    # min: 2, max: 50
      ],    # OPTIONAL
      Description => 'MyAuthenticationProfileDescription',    # OPTIONAL
      Name        => 'MyAuthenticationProfileName',           # OPTIONAL
      PeriodicSessionDuration => 1,                           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateAuthenticationProfile>

=head1 ATTRIBUTES


=head2 AllowedIps => ArrayRef[Str|Undef]

A list of IP address range strings that are allowed to access the
instance. For more information on how to configure IP addresses,
seeConfigure session timeouts
(https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts)
in the I<Amazon Connect Administrator Guide>.



=head2 B<REQUIRED> AuthenticationProfileId => Str

A unique identifier for the authentication profile.



=head2 BlockedIps => ArrayRef[Str|Undef]

A list of IP address range strings that are blocked from accessing the
instance. For more information on how to configure IP addresses, For
more information on how to configure IP addresses, see Configure
IP-based access control
(https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac)
in the I<Amazon Connect Administrator Guide>.



=head2 Description => Str

The description for the authentication profile.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name for the authentication profile.



=head2 PeriodicSessionDuration => Int

The short lived session duration configuration for users logged in to
Amazon Connect, in minutes. This value determines the maximum possible
time before an agent is authenticated. For more information, For more
information on how to configure IP addresses, see Configure session
timeouts
(https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts)
in the I<Amazon Connect Administrator Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuthenticationProfile in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

