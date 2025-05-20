
package Paws::CodeConnections::GetSyncConfigurationOutput;
  use Moose;
  has SyncConfiguration => (is => 'ro', isa => 'Paws::CodeConnections::SyncConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetSyncConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncConfiguration => L<Paws::CodeConnections::SyncConfiguration>

The details about the sync configuration for which you want to retrieve
information.


=head2 _request_id => Str


=cut

1;