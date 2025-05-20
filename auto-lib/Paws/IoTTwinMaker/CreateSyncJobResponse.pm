
package Paws::IoTTwinMaker::CreateSyncJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateSyncJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The SyncJob ARN.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time for the SyncJob creation.


=head2 B<REQUIRED> State => Str

The SyncJob response state.

Valid values are: C<"CREATING">, C<"INITIALIZING">, C<"ACTIVE">, C<"DELETING">, C<"ERROR">
=head2 _request_id => Str


=cut

