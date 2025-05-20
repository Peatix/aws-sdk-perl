
package Paws::ManagedBlockchain::CreateAccessor;
  use Moose;
  has AccessorType => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has NetworkType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::InputTagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accessors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::CreateAccessorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateAccessor - Arguments for method CreateAccessor on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessor on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateAccessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessor.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateAccessorOutput = $managedblockchain->CreateAccessor(
      AccessorType       => 'BILLING_TOKEN',
      ClientRequestToken => 'MyClientRequestTokenString',
      NetworkType        => 'ETHEREUM_GOERLI',              # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AccessorId   = $CreateAccessorOutput->AccessorId;
    my $BillingToken = $CreateAccessorOutput->BillingToken;
    my $NetworkType  = $CreateAccessorOutput->NetworkType;

    # Returns a L<Paws::ManagedBlockchain::CreateAccessorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateAccessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessorType => Str

The type of accessor.

Currently, accessor type is restricted to C<BILLING_TOKEN>.

Valid values are: C<"BILLING_TOKEN">

=head2 B<REQUIRED> ClientRequestToken => Str

This is a unique, case-sensitive identifier that you provide to ensure
the idempotency of the operation. An idempotent operation completes no
more than once. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an Amazon Web Services SDK or the Amazon Web Services CLI.



=head2 NetworkType => Str

The blockchain network that the C<Accessor> token is created for.

=over

=item *

Use the actual C<networkType> value for the blockchain network that you
are creating the C<Accessor> token for.

=item *

With the shut down of the I<Ethereum Goerli> and I<Polygon Mumbai
Testnet> networks the following C<networkType> values are no longer
available for selection and use.

=over

=item *

C<ETHEREUM_MAINNET_AND_GOERLI>

=item *

C<ETHEREUM_GOERLI>

=item *

C<POLYGON_MUMBAI>

=back

However, your existing C<Accessor> tokens with these C<networkType>
values will remain unchanged.

=back


Valid values are: C<"ETHEREUM_GOERLI">, C<"ETHEREUM_MAINNET">, C<"ETHEREUM_MAINNET_AND_GOERLI">, C<"POLYGON_MAINNET">, C<"POLYGON_MUMBAI">

=head2 Tags => L<Paws::ManagedBlockchain::InputTagMap>

Tags to assign to the Accessor.

Each tag consists of a key and an optional value. You can specify
multiple key-value pairs in a single request with an overall maximum of
50 tags allowed per resource.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessor in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

