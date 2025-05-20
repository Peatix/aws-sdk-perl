
package Paws::Proton::CreateServiceSyncConfigOutput;
  use Moose;
  has ServiceSyncConfig => (is => 'ro', isa => 'Paws::Proton::ServiceSyncConfig', traits => ['NameInRequest'], request_name => 'serviceSyncConfig' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceSyncConfigOutput

=head1 ATTRIBUTES


=head2 ServiceSyncConfig => L<Paws::Proton::ServiceSyncConfig>

The detailed data of the Proton Ops file.


=head2 _request_id => Str


=cut

1;