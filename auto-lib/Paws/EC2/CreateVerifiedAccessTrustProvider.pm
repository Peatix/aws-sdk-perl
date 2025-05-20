
package Paws::EC2::CreateVerifiedAccessTrustProvider;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessTrustProviderDeviceOptions');
  has DeviceTrustProviderType => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has NativeApplicationOidcOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions');
  has OidcOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions');
  has PolicyReferenceName => (is => 'ro', isa => 'Str', required => 1);
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationRequest');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TrustProviderType => (is => 'ro', isa => 'Str', required => 1);
  has UserTrustProviderType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVerifiedAccessTrustProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVerifiedAccessTrustProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVerifiedAccessTrustProvider - Arguments for method CreateVerifiedAccessTrustProvider on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVerifiedAccessTrustProvider on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVerifiedAccessTrustProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVerifiedAccessTrustProvider.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVerifiedAccessTrustProviderResult =
      $ec2->CreateVerifiedAccessTrustProvider(
      PolicyReferenceName => 'MyString',
      TrustProviderType   => 'user',
      ClientToken         => 'MyString',    # OPTIONAL
      Description         => 'MyString',    # OPTIONAL
      DeviceOptions       => {
        PublicSigningKeyUrl => 'MyString',
        TenantId            => 'MyString',
      },                                    # OPTIONAL
      DeviceTrustProviderType      => 'jamf',    # OPTIONAL
      DryRun                       => 1,         # OPTIONAL
      NativeApplicationOidcOptions => {
        AuthorizationEndpoint    => 'MyString',
        ClientId                 => 'MyString',
        ClientSecret             => 'MyClientSecretType',    # OPTIONAL
        Issuer                   => 'MyString',
        PublicSigningKeyEndpoint => 'MyString',
        Scope                    => 'MyString',
        TokenEndpoint            => 'MyString',
        UserInfoEndpoint         => 'MyString',
      },    # OPTIONAL
      OidcOptions => {
        AuthorizationEndpoint => 'MyString',
        ClientId              => 'MyString',
        ClientSecret          => 'MyClientSecretType',    # OPTIONAL
        Issuer                => 'MyString',
        Scope                 => 'MyString',
        TokenEndpoint         => 'MyString',
        UserInfoEndpoint      => 'MyString',
      },    # OPTIONAL
      SseSpecification => {
        CustomerManagedKeyEnabled => 1,
        KmsKeyArn                 => 'MyKmsKeyArn',    # OPTIONAL
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UserTrustProviderType => 'iam-identity-center',    # OPTIONAL
      );

    # Results:
    my $VerifiedAccessTrustProvider =
      $CreateVerifiedAccessTrustProviderResult->VerifiedAccessTrustProvider;

    # Returns a L<Paws::EC2::CreateVerifiedAccessTrustProviderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVerifiedAccessTrustProvider>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the Verified Access trust provider.



=head2 DeviceOptions => L<Paws::EC2::CreateVerifiedAccessTrustProviderDeviceOptions>

The options for a device-based trust provider. This parameter is
required when the provider type is C<device>.



=head2 DeviceTrustProviderType => Str

The type of device-based trust provider. This parameter is required
when the provider type is C<device>.

Valid values are: C<"jamf">, C<"crowdstrike">, C<"jumpcloud">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 NativeApplicationOidcOptions => L<Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions>

The OpenID Connect (OIDC) options.



=head2 OidcOptions => L<Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions>

The options for a OpenID Connect-compatible user-identity trust
provider. This parameter is required when the provider type is C<user>.



=head2 B<REQUIRED> PolicyReferenceName => Str

The identifier to be used when working with policy rules.



=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>

The options for server side encryption.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to assign to the Verified Access trust provider.



=head2 B<REQUIRED> TrustProviderType => Str

The type of trust provider.

Valid values are: C<"user">, C<"device">

=head2 UserTrustProviderType => Str

The type of user-based trust provider. This parameter is required when
the provider type is C<user>.

Valid values are: C<"iam-identity-center">, C<"oidc">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVerifiedAccessTrustProvider in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

