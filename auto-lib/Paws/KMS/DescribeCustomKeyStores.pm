
package Paws::KMS::DescribeCustomKeyStores;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has CustomKeyStoreName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomKeyStores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DescribeCustomKeyStoresResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeCustomKeyStores - Arguments for method DescribeCustomKeyStores on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomKeyStores on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DescribeCustomKeyStores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomKeyStores.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
 # To get detailed information about custom key stores in the account and Region
 # This example gets detailed information about all AWS KMS custom key stores in
 # an AWS account and Region. To get all key stores, do not enter a custom key
 # store name or ID.
    my $DescribeCustomKeyStoresResponse = $kms->DescribeCustomKeyStores();

    # Results:
    my $CustomKeyStores = $DescribeCustomKeyStoresResponse->CustomKeyStores;

# Returns a L<Paws::KMS::DescribeCustomKeyStoresResponse> object.
# To get detailed information about a custom key store associated with a CloudHSM cluster.
# This example gets detailed information about a particular AWS KMS custom key
# store that is associate with an AWS CloudHSM cluster. To limit the output to a
# particular custom key store, provide the custom key store name or ID.
    my $DescribeCustomKeyStoresResponse = $kms->DescribeCustomKeyStores(
      'CustomKeyStoreName' => 'ExampleKeyStore' );

    # Results:
    my $CustomKeyStores = $DescribeCustomKeyStoresResponse->CustomKeyStores;

    # Returns a L<Paws::KMS::DescribeCustomKeyStoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DescribeCustomKeyStores>

=head1 ATTRIBUTES


=head2 CustomKeyStoreId => Str

Gets only information about the specified custom key store. Enter the
key store ID.

By default, this operation gets information about all custom key stores
in the account and Region. To limit the output to a particular custom
key store, provide either the C<CustomKeyStoreId> or
C<CustomKeyStoreName> parameter, but not both.



=head2 CustomKeyStoreName => Str

Gets only information about the specified custom key store. Enter the
friendly name of the custom key store.

By default, this operation gets information about all custom key stores
in the account and Region. To limit the output to a particular custom
key store, provide either the C<CustomKeyStoreId> or
C<CustomKeyStoreName> parameter, but not both.



=head2 Limit => Int

Use this parameter to specify the maximum number of items to return.
When this value is present, KMS does not return more than the specified
number of items, but it might return fewer.



=head2 Marker => Str

Use this parameter in a subsequent request after you receive a response
with truncated results. Set it to the value of C<NextMarker> from the
truncated response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomKeyStores in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

