
package Paws::PrivateNetworks::ActivateNetworkSite;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CommitmentConfiguration => (is => 'ro', isa => 'Paws::PrivateNetworks::CommitmentConfiguration', traits => ['NameInRequest'], request_name => 'commitmentConfiguration');
  has NetworkSiteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkSiteArn', required => 1);
  has ShippingAddress => (is => 'ro', isa => 'Paws::PrivateNetworks::Address', traits => ['NameInRequest'], request_name => 'shippingAddress', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateNetworkSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-sites/activate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::ActivateNetworkSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ActivateNetworkSite - Arguments for method ActivateNetworkSite on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateNetworkSite on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method ActivateNetworkSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateNetworkSite.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $ActivateNetworkSiteResponse = $private -networks->ActivateNetworkSite(
      NetworkSiteArn  => 'MyArn',
      ShippingAddress => {
        City            => 'MyAddressContent',    # min: 1, max: 1024
        Country         => 'MyAddressContent',    # min: 1, max: 1024
        Name            => 'MyAddressContent',    # min: 1, max: 1024
        PostalCode      => 'MyAddressContent',    # min: 1, max: 1024
        StateOrProvince => 'MyAddressContent',    # min: 1, max: 1024
        Street1         => 'MyAddressContent',    # min: 1, max: 1024
        Company         => 'MyAddressContent',    # min: 1, max: 1024
        EmailAddress    => 'MyAddressContent',    # min: 1, max: 1024
        PhoneNumber     => 'MyAddressContent',    # min: 1, max: 1024
        Street2         => 'MyAddressContent',    # min: 1, max: 1024
        Street3         => 'MyAddressContent',    # min: 1, max: 1024
      },
      ClientToken             => 'MyClientToken',    # OPTIONAL
      CommitmentConfiguration => {
        AutomaticRenewal => 1,
        CommitmentLength =>
          'SIXTY_DAYS',    # values: SIXTY_DAYS, ONE_YEAR, THREE_YEARS

      },    # OPTIONAL
    );

    # Results:
    my $NetworkSite = $ActivateNetworkSiteResponse->NetworkSite;

    # Returns a L<Paws::PrivateNetworks::ActivateNetworkSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/ActivateNetworkSite>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 CommitmentConfiguration => L<Paws::PrivateNetworks::CommitmentConfiguration>

Determines the duration and renewal status of the commitment period for
all pending radio units.

If you include C<commitmentConfiguration> in the
C<ActivateNetworkSiteRequest> action, you must specify the following:

=over

=item *

The commitment period for the radio unit. You can choose a 60-day,
1-year, or 3-year period.

=item *

Whether you want your commitment period to automatically renew for one
more year after your current commitment period expires.

=back

For pricing, see Amazon Web Services Private 5G Pricing
(http://aws.amazon.com/private5g/pricing).

If you do not include C<commitmentConfiguration> in the
C<ActivateNetworkSiteRequest> action, the commitment period is set to
60-days.



=head2 B<REQUIRED> NetworkSiteArn => Str

The Amazon Resource Name (ARN) of the network site.



=head2 B<REQUIRED> ShippingAddress => L<Paws::PrivateNetworks::Address>

The shipping address of the network site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateNetworkSite in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

