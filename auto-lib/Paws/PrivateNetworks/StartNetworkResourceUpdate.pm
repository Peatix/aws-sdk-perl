
package Paws::PrivateNetworks::StartNetworkResourceUpdate;
  use Moose;
  has CommitmentConfiguration => (is => 'ro', isa => 'Paws::PrivateNetworks::CommitmentConfiguration', traits => ['NameInRequest'], request_name => 'commitmentConfiguration');
  has NetworkResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkResourceArn', required => 1);
  has ReturnReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'returnReason');
  has ShippingAddress => (is => 'ro', isa => 'Paws::PrivateNetworks::Address', traits => ['NameInRequest'], request_name => 'shippingAddress');
  has UpdateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartNetworkResourceUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-resources/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::StartNetworkResourceUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::StartNetworkResourceUpdate - Arguments for method StartNetworkResourceUpdate on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartNetworkResourceUpdate on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method StartNetworkResourceUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartNetworkResourceUpdate.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $StartNetworkResourceUpdateResponse =
      $private -networks->StartNetworkResourceUpdate(
      NetworkResourceArn      => 'MyArn',
      UpdateType              => 'REPLACE',
      CommitmentConfiguration => {
        AutomaticRenewal => 1,
        CommitmentLength =>
          'SIXTY_DAYS',    # values: SIXTY_DAYS, ONE_YEAR, THREE_YEARS

      },    # OPTIONAL
      ReturnReason =>
        'MyStartNetworkResourceUpdateRequestReturnReasonString',    # OPTIONAL
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
      },    # OPTIONAL
      );

    # Results:
    my $NetworkResource = $StartNetworkResourceUpdateResponse->NetworkResource;

# Returns a L<Paws::PrivateNetworks::StartNetworkResourceUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/StartNetworkResourceUpdate>

=head1 ATTRIBUTES


=head2 CommitmentConfiguration => L<Paws::PrivateNetworks::CommitmentConfiguration>

Use this action to extend and automatically renew the commitment period
for the radio unit. You can do the following:

=over

=item *

Change a 60-day commitment to a 1-year or 3-year commitment. The change
is immediate and the hourly rate decreases to the rate for the new
commitment period.

=item *

Change a 1-year commitment to a 3-year commitment. The change is
immediate and the hourly rate decreases to the rate for the 3-year
commitment period.

=item *

Set a 1-year commitment to automatically renew for an additional 1
year. The hourly rate for the additional year will continue to be the
same as your existing 1-year rate.

=item *

Set a 3-year commitment to automatically renew for an additional 1
year. The hourly rate for the additional year will continue to be the
same as your existing 3-year rate.

=item *

Turn off a previously-enabled automatic renewal on a 1-year or 3-year
commitment. You cannot use the automatic-renewal option for a 60-day
commitment.

=back

For pricing, see Amazon Web Services Private 5G Pricing
(http://aws.amazon.com/private5g/pricing).



=head2 B<REQUIRED> NetworkResourceArn => Str

The Amazon Resource Name (ARN) of the network resource.



=head2 ReturnReason => Str

The reason for the return. Providing a reason for a return is optional.



=head2 ShippingAddress => L<Paws::PrivateNetworks::Address>

The shipping address. If you don't provide a shipping address when
replacing or returning a network resource, we use the address from the
original order for the network resource.



=head2 B<REQUIRED> UpdateType => Str

The update type.

=over

=item *

C<REPLACE> - Submits a request to replace a defective radio unit. We
provide a shipping label that you can use for the return process and we
ship a replacement radio unit to you.

=item *

C<RETURN> - Submits a request to return a radio unit that you no longer
need. We provide a shipping label that you can use for the return
process.

=item *

C<COMMITMENT> - Submits a request to change or renew the commitment
period. If you choose this value, then you must set
C<commitmentConfiguration>
(https://docs.aws.amazon.com/private-networks/latest/APIReference/API_StartNetworkResourceUpdate.html#privatenetworks-StartNetworkResourceUpdate-request-commitmentConfiguration).

=back


Valid values are: C<"REPLACE">, C<"RETURN">, C<"COMMITMENT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartNetworkResourceUpdate in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

