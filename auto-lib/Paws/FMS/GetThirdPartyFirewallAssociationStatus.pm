
package Paws::FMS::GetThirdPartyFirewallAssociationStatus;
  use Moose;
  has ThirdPartyFirewall => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetThirdPartyFirewallAssociationStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetThirdPartyFirewallAssociationStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetThirdPartyFirewallAssociationStatus - Arguments for method GetThirdPartyFirewallAssociationStatus on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetThirdPartyFirewallAssociationStatus on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetThirdPartyFirewallAssociationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetThirdPartyFirewallAssociationStatus.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetThirdPartyFirewallAssociationStatusResponse =
      $fms->GetThirdPartyFirewallAssociationStatus(
      ThirdPartyFirewall => 'PALO_ALTO_NETWORKS_CLOUD_NGFW',

      );

    # Results:
    my $MarketplaceOnboardingStatus =
      $GetThirdPartyFirewallAssociationStatusResponse
      ->MarketplaceOnboardingStatus;
    my $ThirdPartyFirewallStatus =
      $GetThirdPartyFirewallAssociationStatusResponse->ThirdPartyFirewallStatus;

# Returns a L<Paws::FMS::GetThirdPartyFirewallAssociationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetThirdPartyFirewallAssociationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThirdPartyFirewall => Str

The name of the third-party firewall vendor.

Valid values are: C<"PALO_ALTO_NETWORKS_CLOUD_NGFW">, C<"FORTIGATE_CLOUD_NATIVE_FIREWALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetThirdPartyFirewallAssociationStatus in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

