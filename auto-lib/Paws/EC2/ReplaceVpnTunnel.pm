
package Paws::EC2::ReplaceVpnTunnel;
  use Moose;
  has ApplyPendingMaintenance => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);
  has VpnTunnelOutsideIpAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceVpnTunnel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceVpnTunnelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceVpnTunnel - Arguments for method ReplaceVpnTunnel on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceVpnTunnel on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceVpnTunnel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceVpnTunnel.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReplaceVpnTunnelResult = $ec2->ReplaceVpnTunnel(
      VpnConnectionId           => 'MyVpnConnectionId',
      VpnTunnelOutsideIpAddress => 'MyString',
      ApplyPendingMaintenance   => 1,                     # OPTIONAL
      DryRun                    => 1,                     # OPTIONAL
    );

    # Results:
    my $Return = $ReplaceVpnTunnelResult->Return;

    # Returns a L<Paws::EC2::ReplaceVpnTunnelResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceVpnTunnel>

=head1 ATTRIBUTES


=head2 ApplyPendingMaintenance => Bool

Trigger pending tunnel endpoint maintenance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VpnConnectionId => Str

The ID of the Site-to-Site VPN connection.



=head2 B<REQUIRED> VpnTunnelOutsideIpAddress => Str

The external IP address of the VPN tunnel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceVpnTunnel in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

