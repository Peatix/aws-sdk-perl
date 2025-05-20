
package Paws::Outposts::UpdateSiteAddress;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::Outposts::Address', required => 1);
  has AddressType => (is => 'ro', isa => 'Str', required => 1);
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSiteAddress');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites/{SiteId}/address');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::UpdateSiteAddressOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::UpdateSiteAddress - Arguments for method UpdateSiteAddress on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSiteAddress on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method UpdateSiteAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSiteAddress.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $UpdateSiteAddressOutput = $outposts->UpdateSiteAddress(
      Address => {
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
      },
      AddressType => 'SHIPPING_ADDRESS',
      SiteId      => 'MySiteId',

    );

    # Results:
    my $Address     = $UpdateSiteAddressOutput->Address;
    my $AddressType = $UpdateSiteAddressOutput->AddressType;

    # Returns a L<Paws::Outposts::UpdateSiteAddressOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/UpdateSiteAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => L<Paws::Outposts::Address>

The address for the site.



=head2 B<REQUIRED> AddressType => Str

The type of the address.

Valid values are: C<"SHIPPING_ADDRESS">, C<"OPERATING_ADDRESS">

=head2 B<REQUIRED> SiteId => Str

The ID or the Amazon Resource Name (ARN) of the site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSiteAddress in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

