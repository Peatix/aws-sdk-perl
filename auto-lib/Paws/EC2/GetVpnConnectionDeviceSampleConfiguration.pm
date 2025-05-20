
package Paws::EC2::GetVpnConnectionDeviceSampleConfiguration;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InternetKeyExchangeVersion => (is => 'ro', isa => 'Str');
  has VpnConnectionDeviceTypeId => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVpnConnectionDeviceSampleConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetVpnConnectionDeviceSampleConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetVpnConnectionDeviceSampleConfiguration - Arguments for method GetVpnConnectionDeviceSampleConfiguration on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVpnConnectionDeviceSampleConfiguration on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetVpnConnectionDeviceSampleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVpnConnectionDeviceSampleConfiguration.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetVpnConnectionDeviceSampleConfigurationResult =
      $ec2->GetVpnConnectionDeviceSampleConfiguration(
      VpnConnectionDeviceTypeId  => 'MyVpnConnectionDeviceTypeId',
      VpnConnectionId            => 'MyVpnConnectionId',
      DryRun                     => 1,                               # OPTIONAL
      InternetKeyExchangeVersion => 'MyString',                      # OPTIONAL
      );

    # Results:
    my $VpnConnectionDeviceSampleConfiguration =
      $GetVpnConnectionDeviceSampleConfigurationResult
      ->VpnConnectionDeviceSampleConfiguration;

# Returns a L<Paws::EC2::GetVpnConnectionDeviceSampleConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetVpnConnectionDeviceSampleConfiguration>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InternetKeyExchangeVersion => Str

The IKE version to be used in the sample configuration file for your
customer gateway device. You can specify one of the following versions:
C<ikev1> or C<ikev2>.



=head2 B<REQUIRED> VpnConnectionDeviceTypeId => Str

Device identifier provided by the C<GetVpnConnectionDeviceTypes> API.



=head2 B<REQUIRED> VpnConnectionId => Str

The C<VpnConnectionId> specifies the Site-to-Site VPN connection used
for the sample configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVpnConnectionDeviceSampleConfiguration in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

