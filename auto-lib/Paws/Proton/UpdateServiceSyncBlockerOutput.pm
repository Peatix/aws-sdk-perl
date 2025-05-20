
package Paws::Proton::UpdateServiceSyncBlockerOutput;
  use Moose;
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has ServiceSyncBlocker => (is => 'ro', isa => 'Paws::Proton::SyncBlocker', traits => ['NameInRequest'], request_name => 'serviceSyncBlocker' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateServiceSyncBlockerOutput

=head1 ATTRIBUTES


=head2 ServiceInstanceName => Str

The name of the service instance that you want to update the service
sync blocker for.


=head2 B<REQUIRED> ServiceName => Str

The name of the service that you want to update the service sync
blocker for.


=head2 B<REQUIRED> ServiceSyncBlocker => L<Paws::Proton::SyncBlocker>

The detailed data on the service sync blocker that was updated.


=head2 _request_id => Str


=cut

1;