
package Paws::PcaConnectorAd::GetServicePrincipalNameResponse;
  use Moose;
  has ServicePrincipalName => (is => 'ro', isa => 'Paws::PcaConnectorAd::ServicePrincipalName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::GetServicePrincipalNameResponse

=head1 ATTRIBUTES


=head2 ServicePrincipalName => L<Paws::PcaConnectorAd::ServicePrincipalName>

The service principal name that the connector uses to authenticate with
Active Directory.


=head2 _request_id => Str


=cut

