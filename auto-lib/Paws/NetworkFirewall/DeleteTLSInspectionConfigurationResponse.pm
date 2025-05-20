
package Paws::NetworkFirewall::DeleteTLSInspectionConfigurationResponse;
  use Moose;
  has TLSInspectionConfigurationResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::TLSInspectionConfigurationResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteTLSInspectionConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TLSInspectionConfigurationResponse => L<Paws::NetworkFirewall::TLSInspectionConfigurationResponse>

The high-level properties of a TLS inspection configuration. This,
along with the TLSInspectionConfiguration, define the TLS inspection
configuration. You can retrieve all objects for a TLS inspection
configuration by calling DescribeTLSInspectionConfiguration.


=head2 _request_id => Str


=cut

1;