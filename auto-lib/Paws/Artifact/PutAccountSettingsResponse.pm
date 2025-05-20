
package Paws::Artifact::PutAccountSettingsResponse;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::Artifact::AccountSettings', traits => ['NameInRequest'], request_name => 'accountSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::PutAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::Artifact::AccountSettings>




=head2 _request_id => Str


=cut

