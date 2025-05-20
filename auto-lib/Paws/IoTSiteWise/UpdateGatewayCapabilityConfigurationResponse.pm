
package Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse;
  use Moose;
  has CapabilityNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityNamespace', required => 1);
  has CapabilitySyncStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilitySyncStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityNamespace => Str

The namespace of the gateway capability.


=head2 B<REQUIRED> CapabilitySyncStatus => Str

The synchronization status of the capability configuration. The sync
status can be one of the following:

=over

=item *

C<IN_SYNC> E<ndash> The gateway is running the capability
configuration.

=item *

C<NOT_APPLICABLE> E<ndash> Synchronization is not required for this
capability configuration. This is most common when integrating partner
data sources, because the data integration is handled externally by the
partner.

=item *

C<OUT_OF_SYNC> E<ndash> The gateway hasn't received the capability
configuration.

=item *

C<SYNC_FAILED> E<ndash> The gateway rejected the capability
configuration.

=item *

C<UNKNOWN> E<ndash> The synchronization status is currently unknown due
to an undetermined or temporary error.

=back

After you update a capability configuration, its sync status is
C<OUT_OF_SYNC> until the gateway receives and applies or rejects the
updated configuration.

Valid values are: C<"IN_SYNC">, C<"OUT_OF_SYNC">, C<"SYNC_FAILED">, C<"UNKNOWN">, C<"NOT_APPLICABLE">
=head2 _request_id => Str


=cut

