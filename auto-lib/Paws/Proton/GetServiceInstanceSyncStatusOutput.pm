
package Paws::Proton::GetServiceInstanceSyncStatusOutput;
  use Moose;
  has DesiredState => (is => 'ro', isa => 'Paws::Proton::Revision', traits => ['NameInRequest'], request_name => 'desiredState' );
  has LatestSuccessfulSync => (is => 'ro', isa => 'Paws::Proton::ResourceSyncAttempt', traits => ['NameInRequest'], request_name => 'latestSuccessfulSync' );
  has LatestSync => (is => 'ro', isa => 'Paws::Proton::ResourceSyncAttempt', traits => ['NameInRequest'], request_name => 'latestSync' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceInstanceSyncStatusOutput

=head1 ATTRIBUTES


=head2 DesiredState => L<Paws::Proton::Revision>

The service instance sync desired state that's returned by Proton


=head2 LatestSuccessfulSync => L<Paws::Proton::ResourceSyncAttempt>

The detailed data of the latest successful sync with the service
instance.


=head2 LatestSync => L<Paws::Proton::ResourceSyncAttempt>

The detailed data of the latest sync with the service instance.


=head2 _request_id => Str


=cut

1;