
package Paws::ApiGateway::DomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificateUploadDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateUploadDate');
  has DistributionDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionDomainName');
  has DistributionHostedZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionHostedZoneId');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has DomainNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameArn');
  has DomainNameId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameId');
  has DomainNameStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameStatus');
  has DomainNameStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameStatusMessage');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has ManagementPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managementPolicy');
  has MutualTlsAuthentication => (is => 'ro', isa => 'Paws::ApiGateway::MutualTlsAuthentication', traits => ['NameInRequest'], request_name => 'mutualTlsAuthentication');
  has OwnershipVerificationCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownershipVerificationCertificateArn');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has RegionalCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateArn');
  has RegionalCertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateName');
  has RegionalDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalDomainName');
  has RegionalHostedZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalHostedZoneId');
  has SecurityPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityPolicy');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainName

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an Amazon Web Services-managed certificate that will
be used by edge-optimized endpoint or private endpoint for this domain
name. Certificate Manager is the only supported source.


=head2 CertificateName => Str

The name of the certificate that will be used by edge-optimized
endpoint or private endpoint for this domain name.


=head2 CertificateUploadDate => Str

The timestamp when the certificate that was used by edge-optimized
endpoint or private endpoint for this domain name was uploaded.


=head2 DistributionDomainName => Str

The domain name of the Amazon CloudFront distribution associated with
this custom domain name for an edge-optimized endpoint. You set up this
association when adding a DNS record pointing the custom domain name to
this distribution name. For more information about CloudFront
distributions, see the Amazon CloudFront documentation.


=head2 DistributionHostedZoneId => Str

The region-agnostic Amazon Route 53 Hosted Zone ID of the
edge-optimized endpoint. The valid value is C<Z2FDTNDATAQYW2> for all
the regions. For more information, see Set up a Regional Custom Domain
Name and AWS Regions and Endpoints for API Gateway.


=head2 DomainName => Str

The custom domain name as an API host name, for example,
C<my-api.example.com>.


=head2 DomainNameArn => Str

The ARN of the domain name. Supported only for private custom domain
names.


=head2 DomainNameId => Str

The identifier for the domain name resource. Supported only for private
custom domain names.


=head2 DomainNameStatus => Str

The status of the DomainName migration. The valid values are
C<AVAILABLE> and C<UPDATING>. If the status is C<UPDATING>, the domain
cannot be modified further until the existing operation is complete. If
it is C<AVAILABLE>, the domain can be updated.

Valid values are: C<"AVAILABLE">, C<"UPDATING">, C<"PENDING">, C<"PENDING_CERTIFICATE_REIMPORT">, C<"PENDING_OWNERSHIP_VERIFICATION">
=head2 DomainNameStatusMessage => Str

An optional text message containing detailed information about status
of the DomainName migration.


=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this DomainName showing the endpoint
types and IP address types of the domain name.


=head2 ManagementPolicy => Str

A stringified JSON policy document that applies to the API Gateway
Management service for this DomainName. This policy document controls
access for access association sources to create domain name access
associations with this DomainName. Supported only for private custom
domain names.


=head2 MutualTlsAuthentication => L<Paws::ApiGateway::MutualTlsAuthentication>

The mutual TLS authentication configuration for a custom domain name.
If specified, API Gateway performs two-way authentication between the
client and the server. Clients must present a trusted certificate to
access your API.


=head2 OwnershipVerificationCertificateArn => Str

The ARN of the public certificate issued by ACM to validate ownership
of your custom domain. Only required when configuring mutual TLS and
using an ACM imported or private CA certificate ARN as the
regionalCertificateArn.


=head2 Policy => Str

A stringified JSON policy document that applies to the C<execute-api>
service for this DomainName regardless of the caller and Method
configuration. Supported only for private custom domain names.


=head2 RegionalCertificateArn => Str

The reference to an Amazon Web Services-managed certificate that will
be used for validating the regional domain name. Certificate Manager is
the only supported source.


=head2 RegionalCertificateName => Str

The name of the certificate that will be used for validating the
regional domain name.


=head2 RegionalDomainName => Str

The domain name associated with the regional endpoint for this custom
domain name. You set up this association by adding a DNS record that
points the custom domain name to this regional domain name. The
regional domain name is returned by API Gateway when you create a
regional endpoint.


=head2 RegionalHostedZoneId => Str

The region-specific Amazon Route 53 Hosted Zone ID of the regional
endpoint. For more information, see Set up a Regional Custom Domain
Name and AWS Regions and Endpoints for API Gateway.


=head2 SecurityPolicy => Str

The Transport Layer Security (TLS) version + cipher suite for this
DomainName. The valid values are C<TLS_1_0> and C<TLS_1_2>.

Valid values are: C<"TLS_1_0">, C<"TLS_1_2">
=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The collection of tags. Each tag element is associated with a given
resource.


=head2 _request_id => Str


=cut

