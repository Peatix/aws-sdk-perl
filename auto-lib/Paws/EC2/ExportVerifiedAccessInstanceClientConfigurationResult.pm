
package Paws::EC2::ExportVerifiedAccessInstanceClientConfigurationResult;
  use Moose;
  has DeviceTrustProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'deviceTrustProviderSet', traits => ['NameInRequest',]);
  has OpenVpnConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration]', request_name => 'openVpnConfigurationSet', traits => ['NameInRequest',]);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest',]);
  has UserTrustProvider => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessInstanceUserTrustProviderClientConfiguration', request_name => 'userTrustProvider', traits => ['NameInRequest',]);
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessInstanceId', traits => ['NameInRequest',]);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportVerifiedAccessInstanceClientConfigurationResult

=head1 ATTRIBUTES


=head2 DeviceTrustProviders => ArrayRef[Str|Undef]

The device trust providers.


=head2 OpenVpnConfigurations => ArrayRef[L<Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration>]

The Open VPN configuration.


=head2 Region => Str

The Region.


=head2 UserTrustProvider => L<Paws::EC2::VerifiedAccessInstanceUserTrustProviderClientConfiguration>

The user identity trust provider.


=head2 VerifiedAccessInstanceId => Str

The ID of the Verified Access instance.


=head2 Version => Str

The version.


=head2 _request_id => Str


=cut

