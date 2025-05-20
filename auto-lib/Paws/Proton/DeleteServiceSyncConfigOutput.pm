
package Paws::Proton::DeleteServiceSyncConfigOutput;
  use Moose;
  has ServiceSyncConfig => (is => 'ro', isa => 'Paws::Proton::ServiceSyncConfig', traits => ['NameInRequest'], request_name => 'serviceSyncConfig' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteServiceSyncConfigOutput

=head1 ATTRIBUTES


=head2 ServiceSyncConfig => L<Paws::Proton::ServiceSyncConfig>

The detailed data for the service sync config.


=head2 _request_id => Str


=cut

1;