
package Paws::Outposts::CreateSite;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Notes => (is => 'ro', isa => 'Str');
  has OperatingAddress => (is => 'ro', isa => 'Paws::Outposts::Address');
  has RackPhysicalProperties => (is => 'ro', isa => 'Paws::Outposts::RackPhysicalProperties');
  has ShippingAddress => (is => 'ro', isa => 'Paws::Outposts::Address');
  has Tags => (is => 'ro', isa => 'Paws::Outposts::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::CreateSiteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::CreateSite - Arguments for method CreateSite on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSite on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method CreateSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSite.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $CreateSiteOutput = $outposts->CreateSite(
      Name             => 'MySiteName',
      Description      => 'MySiteDescription',    # OPTIONAL
      Notes            => 'MySiteNotes',          # OPTIONAL
      OperatingAddress => {
        AddressLine1       => 'MyAddressLine1',     # min: 1, max: 180
        City               => 'MyCity',             # min: 1, max: 50
        CountryCode        => 'MyCountryCode',      # min: 2, max: 2
        PostalCode         => 'MyPostalCode',       # min: 1, max: 20
        StateOrRegion      => 'MyStateOrRegion',    # min: 1, max: 50
        AddressLine2       => 'MyAddressLine2',     # max: 60; OPTIONAL
        AddressLine3       => 'MyAddressLine3',     # max: 60; OPTIONAL
        ContactName        => 'MyContactName',      # min: 1, max: 255; OPTIONAL
        ContactPhoneNumber =>
          'MyContactPhoneNumber',                   # min: 1, max: 20; OPTIONAL
        DistrictOrCounty => 'MyDistrictOrCounty',   # min: 1, max: 60; OPTIONAL
        Municipality     => 'MyMunicipality',       # max: 180; OPTIONAL
      },    # OPTIONAL
      RackPhysicalProperties => {
        FiberOpticCableType =>
          'SINGLE_MODE',    # values: SINGLE_MODE, MULTI_MODE; OPTIONAL
        MaximumSupportedWeightLbs => 'NO_LIMIT'
        , # values: NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS; OPTIONAL
        OpticalStandard => 'OPTIC_10GBASE_SR'
        , # values: OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX; OPTIONAL
        PowerConnector => 'L6_30P'
        ,    # values: L6_30P, IEC309, AH530P7W, AH532P6W, CS8365C; OPTIONAL
        PowerDrawKva => 'POWER_5_KVA'
        , # values: POWER_5_KVA, POWER_10_KVA, POWER_15_KVA, POWER_30_KVA; OPTIONAL
        PowerFeedDrop =>
          'ABOVE_RACK',    # values: ABOVE_RACK, BELOW_RACK; OPTIONAL
        PowerPhase =>
          'SINGLE_PHASE',    # values: SINGLE_PHASE, THREE_PHASE; OPTIONAL
        UplinkCount => 'UPLINK_COUNT_1'
        , # values: UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16; OPTIONAL
        UplinkGbps => 'UPLINK_1G'
        ,    # values: UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G; OPTIONAL
      },    # OPTIONAL
      ShippingAddress => {
        AddressLine1       => 'MyAddressLine1',     # min: 1, max: 180
        City               => 'MyCity',             # min: 1, max: 50
        CountryCode        => 'MyCountryCode',      # min: 2, max: 2
        PostalCode         => 'MyPostalCode',       # min: 1, max: 20
        StateOrRegion      => 'MyStateOrRegion',    # min: 1, max: 50
        AddressLine2       => 'MyAddressLine2',     # max: 60; OPTIONAL
        AddressLine3       => 'MyAddressLine3',     # max: 60; OPTIONAL
        ContactName        => 'MyContactName',      # min: 1, max: 255; OPTIONAL
        ContactPhoneNumber =>
          'MyContactPhoneNumber',                   # min: 1, max: 20; OPTIONAL
        DistrictOrCounty => 'MyDistrictOrCounty',   # min: 1, max: 60; OPTIONAL
        Municipality     => 'MyMunicipality',       # max: 180; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Site = $CreateSiteOutput->Site;

    # Returns a L<Paws::Outposts::CreateSiteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/CreateSite>

=head1 ATTRIBUTES


=head2 Description => Str





=head2 B<REQUIRED> Name => Str





=head2 Notes => Str

Additional information that you provide about site access requirements,
electrician scheduling, personal protective equipment, or regulation of
equipment materials that could affect your installation process.



=head2 OperatingAddress => L<Paws::Outposts::Address>

The location to install and power on the hardware. This address might
be different from the shipping address.



=head2 RackPhysicalProperties => L<Paws::Outposts::RackPhysicalProperties>

Information about the physical and logistical details for the rack at
this site. For more information about hardware requirements for racks,
see Network readiness checklist
(https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist)
in the Amazon Web Services Outposts User Guide.



=head2 ShippingAddress => L<Paws::Outposts::Address>

The location to ship the hardware. This address might be different from
the operating address.



=head2 Tags => L<Paws::Outposts::TagMap>

The tags to apply to a site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSite in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

