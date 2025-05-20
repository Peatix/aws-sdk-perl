
package Paws::NetworkFirewall::ListTLSInspectionConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TLSInspectionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::TLSInspectionConfigurationMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListTLSInspectionConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 TLSInspectionConfigurations => ArrayRef[L<Paws::NetworkFirewall::TLSInspectionConfigurationMetadata>]

The TLS inspection configuration metadata objects that you've defined.
Depending on your setting for max results and the number of TLS
inspection configurations, this might not be the full list.


=head2 _request_id => Str


=cut

1;