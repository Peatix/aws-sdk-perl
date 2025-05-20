
package Paws::Proton::GetServiceSyncBlockerSummaryOutput;
  use Moose;
  has ServiceSyncBlockerSummary => (is => 'ro', isa => 'Paws::Proton::ServiceSyncBlockerSummary', traits => ['NameInRequest'], request_name => 'serviceSyncBlockerSummary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceSyncBlockerSummaryOutput

=head1 ATTRIBUTES


=head2 ServiceSyncBlockerSummary => L<Paws::Proton::ServiceSyncBlockerSummary>

The detailed data of the requested service sync blocker summary.


=head2 _request_id => Str


=cut

1;