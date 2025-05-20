
package Paws::KMS::UpdateCustomKeyStore;
  use Moose;
  has CloudHsmClusterId => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str', required => 1);
  has KeyStorePassword => (is => 'ro', isa => 'Str');
  has NewCustomKeyStoreName => (is => 'ro', isa => 'Str');
  has XksProxyAuthenticationCredential => (is => 'ro', isa => 'Paws::KMS::XksProxyAuthenticationCredentialType');
  has XksProxyConnectivity => (is => 'ro', isa => 'Str');
  has XksProxyUriEndpoint => (is => 'ro', isa => 'Str');
  has XksProxyUriPath => (is => 'ro', isa => 'Str');
  has XksProxyVpcEndpointServiceName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::UpdateCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::UpdateCustomKeyStore - Arguments for method UpdateCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method UpdateCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
# To edit the password of a custom key store
# This example tells KMS the password for the kmsuser crypto user in the AWS
# CloudHSM cluster that is associated with the AWS KMS custom key store. (It
# does not change the password in the CloudHSM cluster.) This operation does not
# return any data.
    my $UpdateCustomKeyStoreResponse = $kms->UpdateCustomKeyStore(
      'CustomKeyStoreId' => 'cks-1234567890abcdef0',
      'KeyStorePassword' => 'ExamplePassword'
    );

# To edit the friendly name of a custom key store
# This example changes the friendly name of the AWS KMS custom key store to the
# name that you specify. This operation does not return any data. To verify that
# the operation worked, use the DescribeCustomKeyStores operation.
    my $UpdateCustomKeyStoreResponse = $kms->UpdateCustomKeyStore(
      'CustomKeyStoreId'      => 'cks-1234567890abcdef0',
      'NewCustomKeyStoreName' => 'DevelopmentKeys'
    );

# To associate the custom key store with a different, but related, AWS CloudHSM cluster.
# This example changes the cluster that is associated with a custom key store to
# a related cluster, such as a different backup of the same cluster. This
# operation does not return any data. To verify that the operation worked, use
# the DescribeCustomKeyStores operation.
    my $UpdateCustomKeyStoreResponse = $kms->UpdateCustomKeyStore(
      'CloudHsmClusterId' => 'cluster-1a23b4cdefg',
      'CustomKeyStoreId'  => 'cks-1234567890abcdef0'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/UpdateCustomKeyStore>

=head1 ATTRIBUTES


=head2 CloudHsmClusterId => Str

Associates the custom key store with a related CloudHSM cluster. This
parameter is valid only for custom key stores with a
C<CustomKeyStoreType> of C<AWS_CLOUDHSM>.

Enter the cluster ID of the cluster that you used to create the custom
key store or a cluster that shares a backup history and has the same
cluster certificate as the original cluster. You cannot use this
parameter to associate a custom key store with an unrelated cluster. In
addition, the replacement cluster must fulfill the requirements
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
for a cluster associated with a custom key store. To view the cluster
certificate of a cluster, use the DescribeClusters
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation.

To change this value, the CloudHSM key store must be disconnected.



=head2 B<REQUIRED> CustomKeyStoreId => Str

Identifies the custom key store that you want to update. Enter the ID
of the custom key store. To find the ID of a custom key store, use the
DescribeCustomKeyStores operation.



=head2 KeyStorePassword => Str

Enter the current password of the C<kmsuser> crypto user (CU) in the
CloudHSM cluster that is associated with the custom key store. This
parameter is valid only for custom key stores with a
C<CustomKeyStoreType> of C<AWS_CLOUDHSM>.

This parameter tells KMS the current password of the C<kmsuser> crypto
user (CU). It does not set or change the password of any users in the
CloudHSM cluster.

To change this value, the CloudHSM key store must be disconnected.



=head2 NewCustomKeyStoreName => Str

Changes the friendly name of the custom key store to the value that you
specify. The custom key store name must be unique in the Amazon Web
Services account.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

To change this value, an CloudHSM key store must be disconnected. An
external key store can be connected or disconnected.



=head2 XksProxyAuthenticationCredential => L<Paws::KMS::XksProxyAuthenticationCredentialType>

Changes the credentials that KMS uses to sign requests to the external
key store proxy (XKS proxy). This parameter is valid only for custom
key stores with a C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

You must specify both the C<AccessKeyId> and C<SecretAccessKey> value
in the authentication credential, even if you are only updating one
value.

This parameter doesn't establish or change your authentication
credentials on the proxy. It just tells KMS the credential that you
established with your external key store proxy. For example, if you
rotate the credential on your external key store proxy, you can use
this parameter to update the credential in KMS.

You can change this value when the external key store is connected or
disconnected.



=head2 XksProxyConnectivity => Str

Changes the connectivity setting for the external key store. To
indicate that the external key store proxy uses a Amazon VPC endpoint
service to communicate with KMS, specify C<VPC_ENDPOINT_SERVICE>.
Otherwise, specify C<PUBLIC_ENDPOINT>.

If you change the C<XksProxyConnectivity> to C<VPC_ENDPOINT_SERVICE>,
you must also change the C<XksProxyUriEndpoint> and add an
C<XksProxyVpcEndpointServiceName> value.

If you change the C<XksProxyConnectivity> to C<PUBLIC_ENDPOINT>, you
must also change the C<XksProxyUriEndpoint> and specify a null or empty
string for the C<XksProxyVpcEndpointServiceName> value.

To change this value, the external key store must be disconnected.

Valid values are: C<"PUBLIC_ENDPOINT">, C<"VPC_ENDPOINT_SERVICE">

=head2 XksProxyUriEndpoint => Str

Changes the URI endpoint that KMS uses to connect to your external key
store proxy (XKS proxy). This parameter is valid only for custom key
stores with a C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

For external key stores with an C<XksProxyConnectivity> value of
C<PUBLIC_ENDPOINT>, the protocol must be HTTPS.

For external key stores with an C<XksProxyConnectivity> value of
C<VPC_ENDPOINT_SERVICE>, specify C<https://> followed by the private
DNS name associated with the VPC endpoint service. Each external key
store must use a different private DNS name.

The combined C<XksProxyUriEndpoint> and C<XksProxyUriPath> values must
be unique in the Amazon Web Services account and Region.

To change this value, the external key store must be disconnected.



=head2 XksProxyUriPath => Str

Changes the base path to the proxy APIs for this external key store. To
find this value, see the documentation for your external key manager
and external key store proxy (XKS proxy). This parameter is valid only
for custom key stores with a C<CustomKeyStoreType> of
C<EXTERNAL_KEY_STORE>.

The value must start with C</> and must end with C</kms/xks/v1>, where
C<v1> represents the version of the KMS external key store proxy API.
You can include an optional prefix between the required elements such
as C</I<example>/kms/xks/v1>.

The combined C<XksProxyUriEndpoint> and C<XksProxyUriPath> values must
be unique in the Amazon Web Services account and Region.

You can change this value when the external key store is connected or
disconnected.



=head2 XksProxyVpcEndpointServiceName => Str

Changes the name that KMS uses to identify the Amazon VPC endpoint
service for your external key store proxy (XKS proxy). This parameter
is valid when the C<CustomKeyStoreType> is C<EXTERNAL_KEY_STORE> and
the C<XksProxyConnectivity> is C<VPC_ENDPOINT_SERVICE>.

To change this value, the external key store must be disconnected.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

