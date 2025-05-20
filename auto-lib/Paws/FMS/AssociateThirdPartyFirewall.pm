
package Paws::FMS::AssociateThirdPartyFirewall;
  use Moose;
  has ThirdPartyFirewall => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateThirdPartyFirewall');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::AssociateThirdPartyFirewallResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::AssociateThirdPartyFirewall - Arguments for method AssociateThirdPartyFirewall on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateThirdPartyFirewall on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method AssociateThirdPartyFirewall.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateThirdPartyFirewall.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $AssociateThirdPartyFirewallResponse = $fms->AssociateThirdPartyFirewall(
      ThirdPartyFirewall => 'PALO_ALTO_NETWORKS_CLOUD_NGFW',

    );

    # Results:
    my $ThirdPartyFirewallStatus =
      $AssociateThirdPartyFirewallResponse->ThirdPartyFirewallStatus;

    # Returns a L<Paws::FMS::AssociateThirdPartyFirewallResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/AssociateThirdPartyFirewall>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThirdPartyFirewall => Str

The name of the third-party firewall vendor.

Valid values are: C<"PALO_ALTO_NETWORKS_CLOUD_NGFW">, C<"FORTIGATE_CLOUD_NATIVE_FIREWALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateThirdPartyFirewall in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

