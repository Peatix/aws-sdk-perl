
package Paws::DMS::ReloadReplicationTablesResponse;
  use Moose;
  has ReplicationConfigArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReloadReplicationTablesResponse

=head1 ATTRIBUTES


=head2 ReplicationConfigArn => Str

The Amazon Resource Name of the replication config for which to reload
tables.


=head2 _request_id => Str


=cut

1;