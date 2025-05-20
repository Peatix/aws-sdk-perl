
package Paws::CodeConnections::GetSyncBlockerSummaryOutput;
  use Moose;
  has SyncBlockerSummary => (is => 'ro', isa => 'Paws::CodeConnections::SyncBlockerSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetSyncBlockerSummaryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncBlockerSummary => L<Paws::CodeConnections::SyncBlockerSummary>

The list of sync blockers for a specified resource.


=head2 _request_id => Str


=cut

1;