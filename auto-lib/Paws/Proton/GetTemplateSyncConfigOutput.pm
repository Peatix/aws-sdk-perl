
package Paws::Proton::GetTemplateSyncConfigOutput;
  use Moose;
  has TemplateSyncConfig => (is => 'ro', isa => 'Paws::Proton::TemplateSyncConfig', traits => ['NameInRequest'], request_name => 'templateSyncConfig' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetTemplateSyncConfigOutput

=head1 ATTRIBUTES


=head2 TemplateSyncConfig => L<Paws::Proton::TemplateSyncConfig>

The template sync configuration detail data that's returned by Proton.


=head2 _request_id => Str


=cut

1;