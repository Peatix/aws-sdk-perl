
package Paws::Outposts::UpdateSiteRackPhysicalProperties;
  use Moose;
  has FiberOpticCableType => (is => 'ro', isa => 'Str');
  has MaximumSupportedWeightLbs => (is => 'ro', isa => 'Str');
  has OpticalStandard => (is => 'ro', isa => 'Str');
  has PowerConnector => (is => 'ro', isa => 'Str');
  has PowerDrawKva => (is => 'ro', isa => 'Str');
  has PowerFeedDrop => (is => 'ro', isa => 'Str');
  has PowerPhase => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SiteId', required => 1);
  has UplinkCount => (is => 'ro', isa => 'Str');
  has UplinkGbps => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSiteRackPhysicalProperties');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites/{SiteId}/rackPhysicalProperties');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::UpdateSiteRackPhysicalPropertiesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::UpdateSiteRackPhysicalProperties - Arguments for method UpdateSiteRackPhysicalProperties on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSiteRackPhysicalProperties on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method UpdateSiteRackPhysicalProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSiteRackPhysicalProperties.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $UpdateSiteRackPhysicalPropertiesOutput =
      $outposts->UpdateSiteRackPhysicalProperties(
      SiteId                    => 'MySiteId',
      FiberOpticCableType       => 'SINGLE_MODE',         # OPTIONAL
      MaximumSupportedWeightLbs => 'NO_LIMIT',            # OPTIONAL
      OpticalStandard           => 'OPTIC_10GBASE_SR',    # OPTIONAL
      PowerConnector            => 'L6_30P',              # OPTIONAL
      PowerDrawKva              => 'POWER_5_KVA',         # OPTIONAL
      PowerFeedDrop             => 'ABOVE_RACK',          # OPTIONAL
      PowerPhase                => 'SINGLE_PHASE',        # OPTIONAL
      UplinkCount               => 'UPLINK_COUNT_1',      # OPTIONAL
      UplinkGbps                => 'UPLINK_1G',           # OPTIONAL
      );

    # Results:
    my $Site = $UpdateSiteRackPhysicalPropertiesOutput->Site;

   # Returns a L<Paws::Outposts::UpdateSiteRackPhysicalPropertiesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/UpdateSiteRackPhysicalProperties>

=head1 ATTRIBUTES


=head2 FiberOpticCableType => Str

The type of fiber that you will use to attach the Outpost to your
network.

Valid values are: C<"SINGLE_MODE">, C<"MULTI_MODE">

=head2 MaximumSupportedWeightLbs => Str

The maximum rack weight that this site can support. C<NO_LIMIT> is over
2000lbs.

Valid values are: C<"NO_LIMIT">, C<"MAX_1400_LBS">, C<"MAX_1600_LBS">, C<"MAX_1800_LBS">, C<"MAX_2000_LBS">

=head2 OpticalStandard => Str

The type of optical standard that you will use to attach the Outpost to
your network. This field is dependent on uplink speed, fiber type, and
distance to the upstream device. For more information about networking
requirements for racks, see Network
(https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking)
in the Amazon Web Services Outposts User Guide.

=over

=item *

C<OPTIC_10GBASE_SR>: 10GBASE-SR

=item *

C<OPTIC_10GBASE_IR>: 10GBASE-IR

=item *

C<OPTIC_10GBASE_LR>: 10GBASE-LR

=item *

C<OPTIC_40GBASE_SR>: 40GBASE-SR

=item *

C<OPTIC_40GBASE_ESR>: 40GBASE-ESR

=item *

C<OPTIC_40GBASE_IR4_LR4L>: 40GBASE-IR (LR4L)

=item *

C<OPTIC_40GBASE_LR4>: 40GBASE-LR4

=item *

C<OPTIC_100GBASE_SR4>: 100GBASE-SR4

=item *

C<OPTIC_100GBASE_CWDM4>: 100GBASE-CWDM4

=item *

C<OPTIC_100GBASE_LR4>: 100GBASE-LR4

=item *

C<OPTIC_100G_PSM4_MSA>: 100G PSM4 MSA

=item *

C<OPTIC_1000BASE_LX>: 1000Base-LX

=item *

C<OPTIC_1000BASE_SX> : 1000Base-SX

=back


Valid values are: C<"OPTIC_10GBASE_SR">, C<"OPTIC_10GBASE_IR">, C<"OPTIC_10GBASE_LR">, C<"OPTIC_40GBASE_SR">, C<"OPTIC_40GBASE_ESR">, C<"OPTIC_40GBASE_IR4_LR4L">, C<"OPTIC_40GBASE_LR4">, C<"OPTIC_100GBASE_SR4">, C<"OPTIC_100GBASE_CWDM4">, C<"OPTIC_100GBASE_LR4">, C<"OPTIC_100G_PSM4_MSA">, C<"OPTIC_1000BASE_LX">, C<"OPTIC_1000BASE_SX">

=head2 PowerConnector => Str

The power connector that Amazon Web Services should plan to provide for
connections to the hardware. Note the correlation between C<PowerPhase>
and C<PowerConnector>.

=over

=item *

Single-phase AC feed

=over

=item *

B<L6-30P> E<ndash> (common in US); 30A; single phase

=item *

B<IEC309 (blue)> E<ndash> P+N+E, 6hr; 32 A; single phase

=back

=item *

Three-phase AC feed

=over

=item *

B<AH530P7W (red)> E<ndash> 3P+N+E, 7hr; 30A; three phase

=item *

B<AH532P6W (red)> E<ndash> 3P+N+E, 6hr; 32A; three phase

=item *

B<CS8365C> E<ndash> (common in US); 3P+E, 50A; three phase

=back

=back


Valid values are: C<"L6_30P">, C<"IEC309">, C<"AH530P7W">, C<"AH532P6W">, C<"CS8365C">

=head2 PowerDrawKva => Str

The power draw, in kVA, available at the hardware placement position
for the rack.

Valid values are: C<"POWER_5_KVA">, C<"POWER_10_KVA">, C<"POWER_15_KVA">, C<"POWER_30_KVA">

=head2 PowerFeedDrop => Str

Indicates whether the power feed comes above or below the rack.

Valid values are: C<"ABOVE_RACK">, C<"BELOW_RACK">

=head2 PowerPhase => Str

The power option that you can provide for hardware.

=over

=item *

Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz

=item *

Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz

=back


Valid values are: C<"SINGLE_PHASE">, C<"THREE_PHASE">

=head2 B<REQUIRED> SiteId => Str

The ID or the Amazon Resource Name (ARN) of the site.



=head2 UplinkCount => Str

Racks come with two Outpost network devices. Depending on the supported
uplink speed at the site, the Outpost network devices provide a
variable number of uplinks. Specify the number of uplinks for each
Outpost network device that you intend to use to connect the rack to
your network. Note the correlation between C<UplinkGbps> and
C<UplinkCount>.

=over

=item *

1Gbps - Uplinks available: 1, 2, 4, 6, 8

=item *

10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16

=item *

40 and 100 Gbps- Uplinks available: 1, 2, 4

=back


Valid values are: C<"UPLINK_COUNT_1">, C<"UPLINK_COUNT_2">, C<"UPLINK_COUNT_3">, C<"UPLINK_COUNT_4">, C<"UPLINK_COUNT_5">, C<"UPLINK_COUNT_6">, C<"UPLINK_COUNT_7">, C<"UPLINK_COUNT_8">, C<"UPLINK_COUNT_12">, C<"UPLINK_COUNT_16">

=head2 UplinkGbps => Str

The uplink speed the rack should support for the connection to the
Region.

Valid values are: C<"UPLINK_1G">, C<"UPLINK_10G">, C<"UPLINK_40G">, C<"UPLINK_100G">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSiteRackPhysicalProperties in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

