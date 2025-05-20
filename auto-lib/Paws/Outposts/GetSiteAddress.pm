
package Paws::Outposts::GetSiteAddress;
  use Moose;
  has AddressType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'AddressType', required => 1);
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSiteAddress');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites/{SiteId}/address');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetSiteAddressOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetSiteAddress - Arguments for method GetSiteAddress on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSiteAddress on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetSiteAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSiteAddress.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetSiteAddressOutput = $outposts->GetSiteAddress(
      AddressType => 'SHIPPING_ADDRESS',
      SiteId      => 'MySiteId',

    );

    # Results:
    my $Address     = $GetSiteAddressOutput->Address;
    my $AddressType = $GetSiteAddressOutput->AddressType;
    my $SiteId      = $GetSiteAddressOutput->SiteId;

    # Returns a L<Paws::Outposts::GetSiteAddressOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetSiteAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressType => Str

The type of the address you request.

Valid values are: C<"SHIPPING_ADDRESS">, C<"OPERATING_ADDRESS">

=head2 B<REQUIRED> SiteId => Str

The ID or the Amazon Resource Name (ARN) of the site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSiteAddress in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

