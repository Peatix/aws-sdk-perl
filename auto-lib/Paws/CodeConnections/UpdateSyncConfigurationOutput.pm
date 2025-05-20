
package Paws::CodeConnections::UpdateSyncConfigurationOutput;
  use Moose;
  has SyncConfiguration => (is => 'ro', isa => 'Paws::CodeConnections::SyncConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::UpdateSyncConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncConfiguration => L<Paws::CodeConnections::SyncConfiguration>

The information returned for the sync configuration to be updated.


=head2 _request_id => Str


=cut

1;