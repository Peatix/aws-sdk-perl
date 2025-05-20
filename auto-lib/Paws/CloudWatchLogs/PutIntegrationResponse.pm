
package Paws::CloudWatchLogs::PutIntegrationResponse;
  use Moose;
  has IntegrationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationName' );
  has IntegrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutIntegrationResponse

=head1 ATTRIBUTES


=head2 IntegrationName => Str

The name of the integration that you just created.


=head2 IntegrationStatus => Str

The status of the integration that you just created.

After you create an integration, it takes a few minutes to complete.
During this time, you'll see the status as C<PROVISIONING>.

Valid values are: C<"PROVISIONING">, C<"ACTIVE">, C<"FAILED">
=head2 _request_id => Str


=cut

1;