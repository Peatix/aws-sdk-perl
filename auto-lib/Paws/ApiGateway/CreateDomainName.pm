
package Paws::ApiGateway::CreateDomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateBody');
  has CertificateChain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateChain');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificatePrivateKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePrivateKey');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has MutualTlsAuthentication => (is => 'ro', isa => 'Paws::ApiGateway::MutualTlsAuthenticationInput', traits => ['NameInRequest'], request_name => 'mutualTlsAuthentication');
  has OwnershipVerificationCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownershipVerificationCertificateArn');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has RegionalCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateArn');
  has RegionalCertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateName');
  has SecurityPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityPolicy');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DomainName');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDomainName - Arguments for method CreateDomainName on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainName on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainName = $apigateway->CreateDomainName(
      DomainName            => 'MyString',
      CertificateArn        => 'MyString',    # OPTIONAL
      CertificateBody       => 'MyString',    # OPTIONAL
      CertificateChain      => 'MyString',    # OPTIONAL
      CertificateName       => 'MyString',    # OPTIONAL
      CertificatePrivateKey => 'MyString',    # OPTIONAL
      EndpointConfiguration => {
        IpAddressType => 'ipv4',    # values: ipv4, dualstack; OPTIONAL
        Types         => [
          'REGIONAL', ...           # values: REGIONAL, EDGE, PRIVATE
        ],    # OPTIONAL
        VpcEndpointIds => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      MutualTlsAuthentication => {
        TruststoreUri     => 'MyString',
        TruststoreVersion => 'MyString',
      },    # OPTIONAL
      OwnershipVerificationCertificateArn => 'MyString',    # OPTIONAL
      Policy                              => 'MyString',    # OPTIONAL
      RegionalCertificateArn              => 'MyString',    # OPTIONAL
      RegionalCertificateName             => 'MyString',    # OPTIONAL
      SecurityPolicy                      => 'TLS_1_0',     # OPTIONAL
      Tags => { 'MyString' => 'MyString', },                # OPTIONAL
    );

    # Results:
    my $CertificateArn           = $DomainName->CertificateArn;
    my $CertificateName          = $DomainName->CertificateName;
    my $CertificateUploadDate    = $DomainName->CertificateUploadDate;
    my $DistributionDomainName   = $DomainName->DistributionDomainName;
    my $DistributionHostedZoneId = $DomainName->DistributionHostedZoneId;
    my $DomainName               = $DomainName->DomainName;
    my $DomainNameArn            = $DomainName->DomainNameArn;
    my $DomainNameId             = $DomainName->DomainNameId;
    my $DomainNameStatus         = $DomainName->DomainNameStatus;
    my $DomainNameStatusMessage  = $DomainName->DomainNameStatusMessage;
    my $EndpointConfiguration    = $DomainName->EndpointConfiguration;
    my $ManagementPolicy         = $DomainName->ManagementPolicy;
    my $MutualTlsAuthentication  = $DomainName->MutualTlsAuthentication;
    my $OwnershipVerificationCertificateArn =
      $DomainName->OwnershipVerificationCertificateArn;
    my $Policy                  = $DomainName->Policy;
    my $RegionalCertificateArn  = $DomainName->RegionalCertificateArn;
    my $RegionalCertificateName = $DomainName->RegionalCertificateName;
    my $RegionalDomainName      = $DomainName->RegionalDomainName;
    my $RegionalHostedZoneId    = $DomainName->RegionalHostedZoneId;
    my $SecurityPolicy          = $DomainName->SecurityPolicy;
    my $Tags                    = $DomainName->Tags;

    # Returns a L<Paws::ApiGateway::DomainName> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDomainName>

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an Amazon Web Services-managed certificate that will
be used by edge-optimized endpoint or private endpoint for this domain
name. Certificate Manager is the only supported source.



=head2 CertificateBody => Str

[Deprecated] The body of the server certificate that will be used by
edge-optimized endpoint or private endpoint for this domain name
provided by your certificate authority.



=head2 CertificateChain => Str

[Deprecated] The intermediate certificates and optionally the root
certificate, one after the other without any blank lines, used by an
edge-optimized endpoint for this domain name. If you include the root
certificate, your certificate chain must start with intermediate
certificates and end with the root certificate. Use the intermediate
certificates that were provided by your certificate authority. Do not
include any intermediaries that are not in the chain of trust path.



=head2 CertificateName => Str

The user-friendly name of the certificate that will be used by
edge-optimized endpoint or private endpoint for this domain name.



=head2 CertificatePrivateKey => Str

[Deprecated] Your edge-optimized endpoint's domain name certificate's
private key.



=head2 B<REQUIRED> DomainName => Str

The name of the DomainName resource.



=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this DomainName showing the endpoint
types and IP address types of the domain name.



=head2 MutualTlsAuthentication => L<Paws::ApiGateway::MutualTlsAuthenticationInput>





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
be used by regional endpoint for this domain name. Certificate Manager
is the only supported source.



=head2 RegionalCertificateName => Str

The user-friendly name of the certificate that will be used by regional
endpoint for this domain name.



=head2 SecurityPolicy => Str

The Transport Layer Security (TLS) version + cipher suite for this
DomainName. The valid values are C<TLS_1_0> and C<TLS_1_2>.

Valid values are: C<"TLS_1_0">, C<"TLS_1_2">

=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

