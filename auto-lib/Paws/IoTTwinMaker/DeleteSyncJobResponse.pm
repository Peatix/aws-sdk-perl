
package Paws::IoTTwinMaker::DeleteSyncJobResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteSyncJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> State => Str

The SyncJob response state.

Valid values are: C<"CREATING">, C<"INITIALIZING">, C<"ACTIVE">, C<"DELETING">, C<"ERROR">
=head2 _request_id => Str


=cut

