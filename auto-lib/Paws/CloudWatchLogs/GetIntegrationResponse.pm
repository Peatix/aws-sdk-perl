
package Paws::CloudWatchLogs::GetIntegrationResponse;
  use Moose;
  has IntegrationDetails => (is => 'ro', isa => 'Paws::CloudWatchLogs::IntegrationDetails', traits => ['NameInRequest'], request_name => 'integrationDetails' );
  has IntegrationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationName' );
  has IntegrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationStatus' );
  has IntegrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationType' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetIntegrationResponse

=head1 ATTRIBUTES


=head2 IntegrationDetails => L<Paws::CloudWatchLogs::IntegrationDetails>

A structure that contains information about the integration
configuration. For an integration with OpenSearch Service, this
includes information about OpenSearch Service resources such as the
collection, the workspace, and policies.


=head2 IntegrationName => Str

The name of the integration.


=head2 IntegrationStatus => Str

The current status of this integration.

Valid values are: C<"PROVISIONING">, C<"ACTIVE">, C<"FAILED">
=head2 IntegrationType => Str

The type of integration. Integrations with OpenSearch Service have the
type C<OPENSEARCH>.

Valid values are: C<"OPENSEARCH">
=head2 _request_id => Str


=cut

1;