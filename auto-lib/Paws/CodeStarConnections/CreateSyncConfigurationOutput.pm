
package Paws::CodeStarConnections::CreateSyncConfigurationOutput;
  use Moose;
  has SyncConfiguration => (is => 'ro', isa => 'Paws::CodeStarConnections::SyncConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateSyncConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncConfiguration => L<Paws::CodeStarConnections::SyncConfiguration>

The created sync configuration for the connection. A sync configuration
allows Amazon Web Services to sync content from a Git repository to
update a specified Amazon Web Services resource.


=head2 _request_id => Str


=cut

1;