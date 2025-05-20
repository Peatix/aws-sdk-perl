
package Paws::KMS::CreateCustomKeyStore;
  use Moose;
  has CloudHsmClusterId => (is => 'ro', isa => 'Str');
  has CustomKeyStoreName => (is => 'ro', isa => 'Str', required => 1);
  has CustomKeyStoreType => (is => 'ro', isa => 'Str');
  has KeyStorePassword => (is => 'ro', isa => 'Str');
  has TrustAnchorCertificate => (is => 'ro', isa => 'Str');
  has XksProxyAuthenticationCredential => (is => 'ro', isa => 'Paws::KMS::XksProxyAuthenticationCredentialType');
  has XksProxyConnectivity => (is => 'ro', isa => 'Str');
  has XksProxyUriEndpoint => (is => 'ro', isa => 'Str');
  has XksProxyUriPath => (is => 'ro', isa => 'Str');
  has XksProxyVpcEndpointServiceName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateCustomKeyStore - Arguments for method CreateCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To create an AWS CloudHSM custom key store
    # This example creates a custom key store that is associated with an AWS
    # CloudHSM cluster.
    my $CreateCustomKeyStoreResponse = $kms->CreateCustomKeyStore(
      'CloudHsmClusterId'      => 'cluster-1a23b4cdefg',
      'CustomKeyStoreName'     => 'ExampleKeyStore',
      'KeyStorePassword'       => 'kmsPswd',
      'TrustAnchorCertificate' => '<certificate-goes-here>'
    );

    # Results:
    my $CustomKeyStoreId = $CreateCustomKeyStoreResponse->CustomKeyStoreId;

    # Returns a L<Paws::KMS::CreateCustomKeyStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateCustomKeyStore>

=head1 ATTRIBUTES


=head2 CloudHsmClusterId => Str

Identifies the CloudHSM cluster for an CloudHSM key store. This
parameter is required for custom key stores with C<CustomKeyStoreType>
of C<AWS_CLOUDHSM>.

Enter the cluster ID of any active CloudHSM cluster that is not already
associated with a custom key store. To find the cluster ID, use the
DescribeClusters
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation.



=head2 B<REQUIRED> CustomKeyStoreName => Str

Specifies a friendly name for the custom key store. The name must be
unique in your Amazon Web Services account and Region. This parameter
is required for all custom key stores.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.



=head2 CustomKeyStoreType => Str

Specifies the type of custom key store. The default value is
C<AWS_CLOUDHSM>.

For a custom key store backed by an CloudHSM cluster, omit the
parameter or enter C<AWS_CLOUDHSM>. For a custom key store backed by an
external key manager outside of Amazon Web Services, enter
C<EXTERNAL_KEY_STORE>. You cannot change this property after the key
store is created.

Valid values are: C<"AWS_CLOUDHSM">, C<"EXTERNAL_KEY_STORE">

=head2 KeyStorePassword => Str

Specifies the C<kmsuser> password for an CloudHSM key store. This
parameter is required for custom key stores with a
C<CustomKeyStoreType> of C<AWS_CLOUDHSM>.

Enter the password of the C<kmsuser> crypto user (CU) account
(https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
in the specified CloudHSM cluster. KMS logs into the cluster as this
user to manage key material on your behalf.

The password must be a string of 7 to 32 characters. Its value is case
sensitive.

This parameter tells KMS the C<kmsuser> account password; it does not
change the password in the CloudHSM cluster.



=head2 TrustAnchorCertificate => Str

Specifies the certificate for an CloudHSM key store. This parameter is
required for custom key stores with a C<CustomKeyStoreType> of
C<AWS_CLOUDHSM>.

Enter the content of the trust anchor certificate for the CloudHSM
cluster. This is the content of the C<customerCA.crt> file that you
created when you initialized the cluster
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html).



=head2 XksProxyAuthenticationCredential => L<Paws::KMS::XksProxyAuthenticationCredentialType>

Specifies an authentication credential for the external key store proxy
(XKS proxy). This parameter is required for all custom key stores with
a C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

The C<XksProxyAuthenticationCredential> has two required elements:
C<RawSecretAccessKey>, a secret key, and C<AccessKeyId>, a unique
identifier for the C<RawSecretAccessKey>. For character requirements,
see XksProxyAuthenticationCredentialType.

KMS uses this authentication credential to sign requests to the
external key store proxy on your behalf. This credential is unrelated
to Identity and Access Management (IAM) and Amazon Web Services
credentials.

This parameter doesn't set or change the authentication credentials on
the XKS proxy. It just tells KMS the credential that you established on
your external key store proxy. If you rotate your proxy authentication
credential, use the UpdateCustomKeyStore operation to provide the new
credential to KMS.



=head2 XksProxyConnectivity => Str

Indicates how KMS communicates with the external key store proxy. This
parameter is required for custom key stores with a
C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

If the external key store proxy uses a public endpoint, specify
C<PUBLIC_ENDPOINT>. If the external key store proxy uses a Amazon VPC
endpoint service for communication with KMS, specify
C<VPC_ENDPOINT_SERVICE>. For help making this choice, see Choosing a
connectivity option
(https://docs.aws.amazon.com/kms/latest/developerguide/plan-xks-keystore.html#choose-xks-connectivity)
in the I<Key Management Service Developer Guide>.

An Amazon VPC endpoint service keeps your communication with KMS in a
private address space entirely within Amazon Web Services, but it
requires more configuration, including establishing a Amazon VPC with
multiple subnets, a VPC endpoint service, a network load balancer, and
a verified private DNS name. A public endpoint is simpler to set up,
but it might be slower and might not fulfill your security
requirements. You might consider testing with a public endpoint, and
then establishing a VPC endpoint service for production tasks. Note
that this choice does not determine the location of the external key
store proxy. Even if you choose a VPC endpoint service, the proxy can
be hosted within the VPC or outside of Amazon Web Services such as in
your corporate data center.

Valid values are: C<"PUBLIC_ENDPOINT">, C<"VPC_ENDPOINT_SERVICE">

=head2 XksProxyUriEndpoint => Str

Specifies the endpoint that KMS uses to send requests to the external
key store proxy (XKS proxy). This parameter is required for custom key
stores with a C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

The protocol must be HTTPS. KMS communicates on port 443. Do not
specify the port in the C<XksProxyUriEndpoint> value.

For external key stores with C<XksProxyConnectivity> value of
C<VPC_ENDPOINT_SERVICE>, specify C<https://> followed by the private
DNS name of the VPC endpoint service.

For external key stores with C<PUBLIC_ENDPOINT> connectivity, this
endpoint must be reachable before you create the custom key store. KMS
connects to the external key store proxy while creating the custom key
store. For external key stores with C<VPC_ENDPOINT_SERVICE>
connectivity, KMS connects when you call the ConnectCustomKeyStore
operation.

The value of this parameter must begin with C<https://>. The remainder
can contain upper and lower case letters (A-Z and a-z), numbers (0-9),
dots (C<.>), and hyphens (C<->). Additional slashes (C</> and C<\>) are
not permitted.

B<Uniqueness requirements:>

=over

=item *

The combined C<XksProxyUriEndpoint> and C<XksProxyUriPath> values must
be unique in the Amazon Web Services account and Region.

=item *

An external key store with C<PUBLIC_ENDPOINT> connectivity cannot use
the same C<XksProxyUriEndpoint> value as an external key store with
C<VPC_ENDPOINT_SERVICE> connectivity in this Amazon Web Services
Region.

=item *

Each external key store with C<VPC_ENDPOINT_SERVICE> connectivity must
have its own private DNS name. The C<XksProxyUriEndpoint> value for
external key stores with C<VPC_ENDPOINT_SERVICE> connectivity (private
DNS name) must be unique in the Amazon Web Services account and Region.

=back




=head2 XksProxyUriPath => Str

Specifies the base path to the proxy APIs for this external key store.
To find this value, see the documentation for your external key store
proxy. This parameter is required for all custom key stores with a
C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>.

The value must start with C</> and must end with C</kms/xks/v1> where
C<v1> represents the version of the KMS external key store proxy API.
This path can include an optional prefix between the required elements
such as C</I<prefix>/kms/xks/v1>.

B<Uniqueness requirements:>

=over

=item *

The combined C<XksProxyUriEndpoint> and C<XksProxyUriPath> values must
be unique in the Amazon Web Services account and Region.

=back




=head2 XksProxyVpcEndpointServiceName => Str

Specifies the name of the Amazon VPC endpoint service for interface
endpoints that is used to communicate with your external key store
proxy (XKS proxy). This parameter is required when the value of
C<CustomKeyStoreType> is C<EXTERNAL_KEY_STORE> and the value of
C<XksProxyConnectivity> is C<VPC_ENDPOINT_SERVICE>.

The Amazon VPC endpoint service must fulfill all requirements
(https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements)
for use with an external key store.

B<Uniqueness requirements:>

=over

=item *

External key stores with C<VPC_ENDPOINT_SERVICE> connectivity can share
an Amazon VPC, but each external key store must have its own VPC
endpoint service and private DNS name.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

